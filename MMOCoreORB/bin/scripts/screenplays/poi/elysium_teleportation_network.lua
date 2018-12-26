elysium_teleportation_network = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "elysium_teleportation_network"
}

registerScreenPlay("elysium_teleportation_network", true)

function elysium_teleportation_network:start()
  if (isZoneEnabled("elysium")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function elysium_teleportation_network:spawnSceneObjects()

  spawnSceneObject("elysium", "object/tangible/terminal/terminal_elysium_crystal_02.iff", 2606.1, 0, 2500, 0, math.rad(0) )


end

function elysium_teleportation_network:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
