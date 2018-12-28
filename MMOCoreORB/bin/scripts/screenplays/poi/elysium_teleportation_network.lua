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
--Entry
  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", 0.0, -43.4, -27.6, 3435634, math.rad(0) )
--Exit
  spawnSceneObject("elysium", "object/tangible/terminal/terminal_elysium_crystal_02.iff", 2606.1, 0, 2500, 0, math.rad(0) )
-- Pathways
  spawnSceneObject("elysium", "object/tangible/terminal/terminal_elysium_obelisk.iff", 2606.1, 0, 2600, 0, math.rad(0) )

end

function elysium_teleportation_network:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
