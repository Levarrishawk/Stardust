local ObjectManager = require("managers.object.object_manager")


north_west_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "north_west_region"
}

registerScreenPlay("north_west_region", true)

function north_west_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function north_west_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function north_west_region:spawnMobiles()

-- TODO : Many World Snapshot objects in this region need to have positions corrected due to heightmap variances from NGE client to Pre-CU Client

--[[
  local pBlackguard18 = spawnMobile("mustafar", "blackguard",120,-4407.4,82.6,3194.2,151,0)
  self:setMoodString(pBlackguard18, "idlewander") 
--]]
  
end
