local ObjectManager = require("managers.object.object_manager")

exarKun = ScreenPlay:new {
	buildings = {
		{ buildingIds = { 480000292, 480000300, 480000308, 480000316 } },
	},

	escapePoints = {
		{ planet = "yavin4", x = 164, y = -2937 },		
	},

--[[
	missionBadges = {
		exar_kun = 152, -- TODO  Add Badge and get proper badge id #	
	},

	lockedRooms = { "r3", "r5", "r7"},
--]]
}

registerScreenPlay("exarKun", true)

function exarKun:start()
	if (isZoneEnabled("yavin4")) then
		self:initialize()
	end
end

function exarKun:initialize()
	local num = 0
	for i = 1, #self.buildings, 1 do
		local building = self.buildings[i]
		for j = 1, #building.buildingIds, 1 do
			local pExarKun = getSceneObject(building.buildingIds[j])
			if pExarKun == nil or not SceneObject(pExarKun):isBuildingObject() then
				printLuaError("exarKun:initialize tried using a exarKun id that was nil or not a building: " .. building.buildingIds[j])
			else
				local exarKunID = SceneObject(pExarKun):getObjectID()
				writeData("exarKunActive:" .. exarKunID, 0)
				self:ejectAllPlayers(pExarKun)
				writeData("exarKunPlayerCount:" .. exarKunID, 0)
				createObserver(ENTEREDBUILDING, "exarKun", "onEnterexarKun", pExarKun)
				createObserver(EXITEDBUILDING, "exarKun", "onExitexarKun", pExarKun)
				num = num + 1
			end
		end
	end
end

function exarKun:activate(pPlayer, faction, questType)
	if (not isZoneEnabled("yavin4")) then
		CreatureObject(pPlayer):sendSystemMessage("That area is currently unavailable. Please try again later.") 
		return false
	end

	local ids = nil
	for i = 1, #self.buildings, 1 do		
			ids = self.buildings[i].buildingIds 		
	end

	if ids == nil then
		CreatureObject(pPlayer):sendSystemMessage("You are unable to enter the instance at this time.")
		return false
	end

	local active = 1
	local exarKunID = 0
	for i = 1, #ids, 1 do
		active = readData("exarKunActive:" .. ids[i])

		if (active == 1) then
			local startTime = readData("exarKunStartTime:" .. ids[i])
			local timeLeftSecs = 3600 - (os.time() - startTime) + 120

			if (timeLeftSecs < 0) then
				local pExarKun = getSceneObject(ids[i])

				if (pExarKun ~= nil) then
					self:ejectAllPlayers(pExarKun)
					createEvent(5000, "exarKun", "doexarKunCleanup", pExarKun, "")
				end
			end
		else
			exarKunID = ids[i]
			break
		end
	end

	local pExarKun = getSceneObject(exarKunID)

	if (pExarKun == nil) then
		CreatureObject(pPlayer):sendSystemMessage("You are unable to enter the instance at this time.")
		printLuaError("exarKun:activate unable to find exarKun object with id " .. exarKunID)
		return false
	end

	self:startQuest(pExarKun, questType)

	local playerID = SceneObject(pPlayer):getObjectID()
	writeData(playerID .. "exarKunID", exarKunID)
	writeData(exarKunID .. ":ownerID", playerID)
	createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")

	if (CreatureObject(pPlayer):isGrouped()) then
		local groupSize = CreatureObject(pPlayer):getGroupSize()

		for i = 0, groupSize - 1, 1 do
			local pMember = CreatureObject(pPlayer):getGroupMember(i)
			if pMember ~= nil and pMember ~= pPlayer and CreatureObject(pPlayer):isInRangeWithObject(pMember, 50) and not SceneObject(pMember):isAiAgent() then
				self:sendAuthorizationSui(pMember, pPlayer, pExarKun)
			end
		end
	end

	return true
end



function exarKun:sendAuthorizationSui(pPlayer, pLeader, pExarKun)
	if (pPlayer == nil or pExarKun == nil) then
		return
	end

	

	writeData(SceneObject(pPlayer):getObjectID() .. "exarKunID", SceneObject(pExarKun):getObjectID())

	local sui = SuiMessageBox.new("exarKun", "authorizationSuiCallback")
	sui.setTargetNetworkId(SceneObject(pExarKun):getObjectID())
	local exarKunName = ("Exar Kun Catacombs")
	sui.setTitle("Exar Kun Catcombs")
	sui.setPrompt(CreatureObject(pLeader):getFirstName() .. " has granted you authorization to travel to " .. exarKunName ..". Do you accept this travel offer?")
	sui.setOkButtonText("Yes")
	sui.setCancelButtonText("No")

	local pageId = sui.sendTo(pPlayer)

	createEvent(30 * 1000, "exarKun", "closeAuthorizationSui", pPlayer, pageId)
end

function exarKun:authorizationSuiCallback(pPlayer, pSui, eventIndex, args)
	local cancelPressed = (eventIndex == 1)

	if (cancelPressed) then
		deleteData(SceneObject(pPlayer):getObjectID() .. "exarKunID")
		return
	end

	createEvent(1000, "exarKun", "transportPlayer", pPlayer, "")
end

function exarKun:closeAuthorizationSui(pPlayer, pageId)
	local pExarKun = self:getExarKunObject(pPlayer)
	local playerID = SceneObject(pPlayer):getObjectID()
	local pageId = tonumber(pageId)

	if (pExarKun ~= nil and SceneObject(pExarKun):getObjectID() == readData(playerID .. "exarKunID")) then
		return
	end

	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost == nil) then
		return
	end

	PlayerObject(pGhost):removeSuiBox(pageId)

	deleteData(playerID .. "exarKunID")
end
--[[
function exarKun:lockRooms(pExarKun)
	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()

	for i = 1 ,#self.lockedRooms, 1 do
		local pCell = BuildingObject(pExarKun):getNamedCell(self.lockedRooms[i])

		if (pCell ~= nil) then
			SceneObject(pCell):setContainerInheritPermissionsFromParent(false)
			SceneObject(pCell):setContainerDefaultDenyPermission(WALKIN)
			SceneObject(pCell):clearContainerDefaultAllowPermission(WALKIN)
		end
	end
end

function exarKun:unlockRoom(pExarKun, roomName)
	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()

	local pCell = BuildingObject(pExarKun):getNamedCell(roomName)

	if (pCell ~= nil) then
		SceneObject(pCell):clearContainerDefaultDenyPermission(WALKIN)
		SceneObject(pCell):setContainerDefaultAllowPermission(WALKIN)
		local cellID = SceneObject(pCell):getObjectID()
		BuildingObject(pExarKun):broadcastSpecificCellPermissions(cellID)
	end
end


function exarKun:setupUnlockRoom1(pTarget)
  if (pTarget == nil) then
    return
  end

  local pExarKun = self:getExarKunObject(pTarget)

  if (pExarKun == nil) then
    return
  end

  local exarKunID = SceneObject(pExarKun):getObjectID()
  local roomName = "r3"

  if (readData("exarKunActive:" .. exarKunID) ~= 1) then
    return
  end

  createObserver(OBJECTDESTRUCTION, "exarKun", "unlockRoom", pTarget, pExarKun, roomName )
end

function exarKun:setupUnlockRoom2(pTarget)
  if (pTarget == nil) then
    return
  end

  local pExarKun = self:getExarKunObject(pTarget)

  if (pExarKun == nil) then
    return
  end

  local exarKunID = SceneObject(pExarKun):getObjectID()
  local roomName = "r5"

  if (readData("exarKunActive:" .. exarKunID) ~= 1) then
    return
  end

  createObserver(OBJECTDESTRUCTION, "exarKun", "unlockRoom", pTarget, pExarKun, roomName )
end

function exarKun:setupUnlockRoom3(pTarget)
  if (pTarget == nil) then
    return
  end

  local pExarKun = self:getExarKunObject(pTarget)

  if (pExarKun == nil) then
    return
  end

  local exarKunID = SceneObject(pExarKun):getObjectID()
  local roomName = "r7"

  if (readData("exarKunActive:" .. exarKunID) ~= 1) then
    return
  end

  createObserver(OBJECTDESTRUCTION, "exarKun", "unlockRoom", pTarget, pExarKun, roomName )
end



function exarKun:setupSceneObjects(pExarKun)
	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()
	local corvetteFaction = self:getBuildingFaction(pExarKun)

	if (readData("exarKunActive:" .. exarKunID) ~= 1) then
		return
	end

	for i = 1, #exarKunStaticSpawns, 1 do
		local spawnData = exarKunStaticSpawns[i]
		local pCell = BuildingObject(pExarKun):getNamedCell(spawnData[5])

		if (pCell ~= nil) then
			if (spawnData[10] == nil or spawnData[10] == "" or spawnData[10] == corvetteFaction) then
				local pObject = spawnSceneObject("yavin4", spawnData[1], spawnData[2], spawnData[3], spawnData[4], SceneObject(pCell):getObjectID(), math.rad(spawnData[6]))

				if (pObject == nil) then
					printLuaError("exarKun:setupSceneObjects unable to spawn scene object " .. spawnData[1] .. " for exarKun ID " .. exarKunID)
				else
					if (spawnData[7] ~= nil and spawnData[7] ~= "") then
						SceneObject(pObject):setCustomObjectName(spawnData[7])
					end

					if (spawnData[8] ~= nil and spawnData[8] ~= "") then
						local extraData = spawnData[9]

						if (extraData == nil) then
							extraData = ""
						end

						createEvent(100, "exarKun", spawnData[8], pObject, extraData)
					end
				end
			end
		else
			printLuaError("Unable to grab cell object for cell named " .. spawnData[5] .. " when trying to spawn object " .. spawnData[1] .. ".")
		end
	end
end


function exarKun:spawnNpcs(pExarKun)
	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()
	local corvetteFaction = self:getBuildingFaction(pExarKun)

	if (readData("exarKunActive:" .. exarKunID) ~= 1) then
		return
	end

	local spawnTable = exarKunSpawns


	for i = 1, #spawnTable, 1 do
		local spawnData = spawnTable[i]
		local pCell = BuildingObject(pExarKun):getNamedCell(spawnData[6])

		if (pCell ~= nil) then
			local cellID = SceneObject(pCell):getObjectID()
			local pMobile = spawnMobile("yavin4", spawnData[1], 0, spawnData[2], spawnData[3], spawnData[4], spawnData[5], cellID)

			if (pMobile == nil) then
				printLuaError("exarKun:setupSceneObjects unable to spawn mobile " .. spawnData[1] .. " for " .. corvetteFaction .. " exarKun ID " .. exarKunID)
			else
				CreatureObject(pMobile):setOptionBit(IGNORE_FACTION_STANDING)
				if (spawnData[7] ~= nil and spawnData[7] ~= "") then
					createEvent(100, "exarKun", spawnData[7], pMobile, "")
				end
			end
		else
			printLuaError("Unable to grab cell object for cell named " .. spawnData[6] .. " in exarKun ID " .. exarKunID .. " when trying to spawn " .. spawnData[1])
		end
	end
end

function exarKun:setupAssassinationTarget(pTarget)
	if (pTarget == nil) then
		return
	end

	local pExarKun = self:getExarKunObject(pTarget)

	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()

	if (readData("exarKunActive:" .. exarKunID) ~= 1) then
		return
	end

	createObserver(OBJECTDESTRUCTION, "exarKun", "onAssassinationTargetKilled", pTarget)
end



function exarKun:onAssassinationTargetKilled(pTarget, pKiller)
	if (pTarget == nil or pKiller == nil) then
		return 1
	end

	local pExarKun = self:getExarKunObject(pTarget)

	if (pExarKun == nil) then
		return 1
	end

	local questType = "assassinate"
	

	exarKun:handleQuestSuccess(pExarKun)

	return 1
end

--]]


function exarKun:transportPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	-- Make sure the player had no data left over from a previous corvette
	self:doPlayerCleanup(pPlayer)

	local exarKunID = readData(SceneObject(pPlayer):getObjectID() .. "exarKunID")

	local pExarKun = getSceneObject(exarKunID)

	if (pExarKun == nil) then
		printLuaError("exarKun:transportPlayer nil exarKun object using exarKun id " .. exarKunID)
		return
	end

	local pCell = BuildingObject(pExarKun):getCell(1)

	if (pCell == nil) then
		return
	end

	local cellID = SceneObject(pCell):getObjectID()
	SceneObject(pPlayer):switchZone("yavin4", -11.8, 0.2, -121.8, cellID)
end

function exarKun:startQuest(pExarKun, questType)
	local dungeonID = self:getNewDungeonID()
	local exarKunID = SceneObject(pExarKun):getObjectID()
	local questType = "assassinate"
	writeData("exarKunDungeonID:" .. exarKunID, dungeonID)
	writeData("exarKunActive:" .. exarKunID, 1)
	writeData("exarKunStartTime:" .. exarKunID, os.time())
	writeStringData("exarKunQuestType:" .. exarKunID, questType)
	createEvent(5 * 60 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")

	--self:setupSceneObjects(pExarKun)
	--self:spawnNpcs(pExarKun)
	--self:lockRooms(pExarKun)
end

--[[
function exarKun:getBuildingFaction(pExarKun)
	local templatePath = SceneObject(pExarKun):getTemplateObjectPath()
	if string.find(templatePath, "imperial") ~= nil then
		return "imperial"
	elseif string.find(templatePath, "rebel") ~= nil then
		return "rebel"
	else
		return "neutral"
	end
end
--]]

function exarKun:onEnterCorvette(pExarKun, pPlayer)
	if not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	local active = readData("exarKunActive:" .. SceneObject(pExarKun):getObjectID())
	if active ~= 1 then
		createEvent(10 * 1000, "exarKun", "handleNotAuthorized", pPlayer, "")
		return 0
	end

	local playerCount = readData("exarKunPlayerCount:" .. SceneObject(pExarKun):getObjectID())

	writeData("exarKunPlayerCount:" .. SceneObject(pExarKun):getObjectID(), playerCount + 1)

	if playerCount > 10 then
		createEvent(10 * 1000, "exarKun", "handleTooMany", pPlayer, "")
		return 0
	end

	return 0
end

function exarKun:onExitCorvette(pExarKun, pPlayer)
	if not SceneObject(pPlayer):isPlayerCreature() then
		return 0
	end

	local playerCount = readData("exarKunPlayerCount:" .. SceneObject(pExarKun):getObjectID())
	writeData("exarKunPlayerCount:" .. SceneObject(pExarKun):getObjectID(), playerCount - 1)

	return 0
end

function exarKun:handleNotAuthorized(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:not_authorized") -- You do not have the proper authorization to be in this area.
	createEvent(2 * 1000, "exarKun", "ejectPlayer", pPlayer, "")
end

function exarKun:handleTooMany(pPlayer)
	CreatureObject(pPlayer):sendSystemMessage("@dungeon/space_dungeon:no_room_remaining") -- There are too many people in this area. Return transportation initiated.
	createEvent(2 * 1000, "exarKun", "ejectPlayer", pPlayer, "")
end

function exarKun:handleexarKunTimer(pExarKun)
	local startTime = readData("exarKunStartTime:" .. SceneObject(pExarKun):getObjectID())
	local timeLeftSecs = 3600 - (os.time() - startTime)
	local timeLeft = math.floor(timeLeftSecs / 60)

	if (timeLeft > 10) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(5 * 60 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeft >= 3) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(60 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeft >= 2) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_" .. timeLeft)
		createEvent(30 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeftSecs >= 90) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_90s")
		createEvent(30 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeftSecs >= 60) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_1")
		createEvent(30 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeftSecs >= 30) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_30s")
		createEvent(20 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	elseif (timeLeftSecs >= 10) then
		self:broadcastToPlayers(pExarKun, "@dungeon/corvette:timer_10s")
		createEvent(10 * 1000, "exarKun", "handleexarKunTimer", pExarKun, "")
	else
		self:handleQuestFailure(pExarKun)
	end
end

function exarKun:getExarKunObject(pPlayer)
	if (pPlayer == nil) then
		return nil
	end

	local pCell = SceneObject(pPlayer):getParent()

	if (pCell == nil) then
		return nil
	end

	return SceneObject(pCell):getParent()
end

function exarKun:handleQuestFailure(pExarKun)
	self:ejectAllPlayers(pExarKun)
	createEvent(5000, "exarKun", "doexarKunCleanup", pExarKun, "")
end

function exarKun:handleQuestSuccess(pExarKun)
	self:broadcastToPlayers(pExarKun, "You have defeated Exar Kun!") -- You have completed your assignment! Make your way to the escape pods before time expires and get off this ship!
	self:writeDataToGroup(pExarKun, ":exarKunMissionComplete", 1)
	self:giveBadgeToGroup(pExarKun)
end

function exarKun:giveBadgeToGroup(pExarKun)    -- Need to alter and remove factional elements from screenplay.   Lev 12/31/18
	local exarKunFaction = self:getBuildingFaction(pExarKun)
	local questType = readStringData("exarKunQuestType:" .. SceneObject(pExarKun):getObjectID())
	local missionType = exarKunFaction .. "_" .. questType
	local badgeNum = self.missionBadges[missionType]

	if (badgeNum == nil) then
		printLuaError("Invalid mission type " .. missionType .. " trying to get Exar Kun Dungeon badge.")
		return
	end

	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					local pGhost = CreatureObject(pObject):getPlayerObject()

					if (pGhost ~= nil and not PlayerObject(pGhost):hasBadge(badgeNum)) then
						PlayerObject(pGhost):awardBadge(badgeNum)
					end
				end
			end
		end
	end
end

function exarKun:broadcastToPlayers(pExarKun, message)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if SceneObject(pObject):isPlayerCreature() then
					CreatureObject(pObject):sendSystemMessage(message)
				end
			end
		end
	end
end

function exarKun:ejectAllPlayers(pExarKun)
	local playersToEject = {}
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					table.insert(playersToEject, pObject)
				end
			end
		end
	end

	for i = 1, #playersToEject, 1 do
		local pObject = playersToEject[i]
		createEvent(1000, "exarKun", "ejectPlayer", pObject, "")
	end
end

function exarKun:writeDataToGroup(pExarKun, key, data)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)
				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					writeData(SceneObject(pObject):getObjectID() .. key, data)
				end
			end
		end
	end
end

function exarKun:readDataFromGroup(pExarKun, key)
	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = 1, SceneObject(pCell):getContainerObjectsSize(), 1 do
				local pObject = SceneObject(pCell):getContainerObject(j - 1)

				if pObject ~= nil and SceneObject(pObject):isPlayerCreature() then
					local data = readData(SceneObject(pObject):getObjectID() .. key)
					if (data ~= 0) then
						return data
					end
				end
			end
		end
	end

	return 0
end


function exarKun:ejectPlayer(pPlayer)
	if pPlayer == nil then
		return
	end

	local point = nil

	local pParent = SceneObject(pPlayer):getParent()

	if (pParent == nil) then
		return
	end

	local pExarKun = SceneObject(pParent):getParent()

	if pExarKun == nil or not SceneObject(pExarKun):isBuildingObject() then
		printLuaError("exarKun:ejectPlayer unable to find exarKun object")
		return
	end

	local faction = self:getBuildingFaction(pExarKun)


	for i = 1, #self.escapePoints, 1 do
			point = self.escapePoints[i]
	
	end

	if point == nil then
		printLuaError("exarKun:ejectPlayer was unable to grab an escape point for faction: " .. faction)
		return
	end

	local playerID = SceneObject(pPlayer):getObjectID()
	local ownerID = readData(SceneObject(pExarKun):getObjectID() .. ":ownerID")

	if (readData(playerID .. ":exarKunMissionComplete") == 1) then
		local questType = readStringData("exarKunQuestType:" .. SceneObject(pExarKun):getObjectID())
		local missionType = faction .. "_" .. questType
		writeData(playerID .. ":exarKunComplete:" .. missionType, 1)
	end

	if (playerID == ownerID) then
		if (readData(playerID .. ":exarKunMissionComplete") == 1) then
			setQuestStatus(playerID .. ":activeexarKunStep", "3")
			CreatureObject(pPlayer):sendSystemMessage("@dungeon/corvette:reward") -- You have done well. Return to the person who gave you this assignment and receive your reward.
			deleteData(playerID .. ":exarKunMissionComplete")
		else
			removeQuestStatus(playerID .. ":exarKunQuest")
			removeQuestStatus(playerID .. ":exarKunStep")
			removeQuestStatus(playerID .. ":exarKunQuestType")
		end
	end

	if (isZoneEnabled(point.planet)) then
		SceneObject(pPlayer):switchZone(point.planet, point.x, 0, point.y, 0)
	else
		printLuaError("exarKun:ejectPlayer attempted to eject a player to a zone that was not enabled.")
	end

	self:doPlayerCleanup(pPlayer)
end
--[[
function exarKun:doPlayerCleanup(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local playerID = SceneObject(pPlayer):getObjectID()
 
	deleteData(playerID .. ":code:armorybackroom55")    -- Need to change all of these to the handlers for the cells that will be locked..
	deleteData(playerID .. ":code:bridge66")
	deleteData(playerID .. ":code:officerquarters63")
	deleteData(playerID .. ":code:officerquarters64")
	

end
--]]

function exarKun:doexarKunCleanup(pExarKun)
	if (pExarKun == nil) then
		return
	end

	local exarKunID = SceneObject(pExarKun):getObjectID()

	

	for i = 1, 66, 1 do
		local pCell = BuildingObject(pExarKun):getCell(i)

		if (pCell ~= nil) then
			for j = SceneObject(pCell):getContainerObjectsSize() - 1, 0, -1 do
				local pObject = SceneObject(pCell):getContainerObject(j)

				if pObject ~= nil and not SceneObject(pObject):isPlayerCreature() then
					SceneObject(pObject):destroyObjectFromWorld()
				end
			end
		end
	end

	
	deleteData("exarKunActive:" .. exarKunID)
	deleteData("exarKunDungeonID:" .. exarKunID)
	deleteData("exarKunStartTime:" .. exarKunID)
end

function exarKun:getNewDungeonID()
	local lastID = tonumber(getQuestStatus("exarKun:lastDungeonID"))
	local newID = 0

	if (lastID == nil or lastID == 0) then
		newID = 1
	else
		newID = lastID + 1
	end

	setQuestStatus("exarKun:lastDungeonID", newID)

	return newID
end

function exarKun:getexarKunFromDungeonID(dungeonID)
	local exarKunID = 0
	for i = 1, #self.buildings, 1 do
		local buildingIds = self.buildings[i]

		for j = 1, #buildingIds, 1 do
			local buildingID = buildingIds[j]

			if (readData("exarKunDungeonID:" .. buildingID) == dungeonID) then
				exarKunID = buildingID
			end
		end
	end

	return getSceneObject(exarKunID)
end
