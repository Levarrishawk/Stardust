lothal_theme_park = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "lothal_theme_park"
}

registerScreenPlay("lothal_theme_park", true)

function lothal_theme_park:start()
  if (isZoneEnabled("lothal")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function lothal_theme_park:spawnSceneObjects()

 -- spawnSceneObject("yavin4", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
  

end

function lothal_theme_park:spawnMobiles()


  local pNpc = spawnMobile("lothal", "ahsoka_tano",60,104,39.5,4183.6,-89,0)
  self:setMoodString(pNpc, "neutral")
  
  

  
end
