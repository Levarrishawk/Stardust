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

  spawnSceneObject("dantooine", "object/static/structure/military/military_wall_weak_imperial_16_style_01.iff", -551.1, 1, -3834.3, 0, math.rad(160) )
  

end

function warren_abandoned:spawnMobiles()

  
  local pNpc = spawnMobile("dantooine", "at_xt",300,-581,1,-3803,-12,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("dantooine", "at_xt",300,-550,1,-3791,-13,0)
  self:setMoodString(pNpc, "neutral")
  

  
end
