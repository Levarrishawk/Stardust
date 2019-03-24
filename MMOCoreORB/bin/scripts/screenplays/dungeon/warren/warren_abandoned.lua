local ObjectManager = require("managers.object.object_manager")


warren_abandoned = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "warren_abandoned"
}

registerScreenPlay("warren_abandoned", true)

function warren_abandoned:start()
  if (isZoneEnabled("dantooine")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function warren_abandoned:spawnSceneObjects()

  spawnSceneObject("dantooine", "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", -551.1, 1, -3834.3, 0, math.rad(155) )
  

end

function warren_abandoned:spawnMobiles()

  --[[
  local pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-79.6,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("kaas", "chandriltech_security_guard",60,-85.8,15.6,4679.7,-13,0)
  self:setMoodString(pNpc, "neutral")
  
--]]
  
end
