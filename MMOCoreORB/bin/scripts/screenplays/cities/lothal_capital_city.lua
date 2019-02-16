LohthalCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LohthalCityScreenPlay"
}

registerScreenPlay("LohthalCityScreenPlay", true)

function HannaCityScreenPlay:start()
	if (isZoneEnabled("lothal")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function LohthalCityScreenPlay:spawnSceneObjects()

	--Cantina Static Objects
	spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, 12.0, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 27.1, -0.9, -10.9, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -16.4, -0.9, 0.4, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.0, -0.9, -3.9, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 15.6, -0.9, 5.7, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.2, -0.9, 11.3, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 11.8, -0.9, -10.2, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -1.1, -0.9, -10.3, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -11.4, -0.9, -7.6, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 34.4, 0.1, 1.6, 58000198, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/gambling/wheel/roulette.iff", 34.4, 0.1, 1.6, 58000198, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 31.7, 0.1, -6.8, 58000198, math.rad(0) ) -- -1
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -16.7, -0.9, 26.4, 58000208, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -31.7, -0.9, 17.1, 58000208, math.rad(0) ) -- +9
  spawnSceneObject("lothal", "object/static/particle/pt_sparking_blast_md.iff", 24.5, 3, 9.5, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/particle/pt_flocking_glowzees.iff", 24.5, 0, 9.5, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/tangible/painting/painting_rodian_m.iff", 27.5, 0.6, -5.8, 58000199, math.rad(0) )
  spawnSceneObject("lothal", "object/static/item/item_scrolling_screen.iff", 9.8, 3.6, 0.1, 58000199, math.rad(0) )  
  
  spawnSceneObject("lothal", "object/tangible/furniture/tatooine/frn_tato_meat_rack.iff", -26, -0.9, 3.0, 58000207, math.rad(0) ) -- +8
  spawnSceneObject("lothal", "object/tangible/furniture/tatooine/frn_tato_meat_rack.iff", -26, -0.9, -2.5, 58000207, math.rad(0) )
  
 

    
-- Starport N Static Objects
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 12.2, 0.6, 50.2, 58000288, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -0.2, 0.6, 48.1, 58000288, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", -13.5, 0.6, 50.9, 58000288, math.rad(0) )
  
  -- Starport S Static Objects
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", 12.2, 0.6, 50.2, 58000177, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -0.2, 0.6, 48.1, 58000177, math.rad(0) )
  spawnSceneObject("lothal", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -13.5, 0.6, 50.9, 58000177, math.rad(0) )
  
  
  -- med center
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_event_buffs.iff", -10.6, 0.3, 0.0, 58000275, math.rad(-90) )
  spawnSceneObject("lothal", "object/tangible/terminal/terminal_event_buffs.iff", 10.8, 0.3, 0.0, 58000271, math.rad(90) )
  
end

function LohthalCityScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("lothal", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")
	
  
  
	-- Cantina
	
  pNpc = spawnMobile("lothal", "bartender",60,-11.5,-0.9,2,230,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "businessman",60,10.65,-0.894992,1.91,330,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "businessman",60,-4.11,-0.894992,5.4,26.8951,58000199)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("lothal", "commoner",60,10.17,-0.894992,2.74,125.098,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_fat",60,2.11,-0.894992,5.4,180,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  
  pNpc = spawnMobile("lothal", "commoner_fat",60,-3.2,-0.9,-10.8,65,58000199)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,3.11,0,5.4,161.005,58000199)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,1.11,0,5.4,330.024,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,-3.11,0,5.4,16.6733,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_naboo",60,16.1,-0.9,4.1,340,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,58000199)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "entertainer",60,9.4,0,3.9,310,58000199)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("lothal", "noble",60,8.49,-0.894992,4.64,128.74,58000199)
  self:setMoodString(pNpc, "conversation")
  
  --
  pNpc = spawnMobile("lothal", "patron",60,13.7,-0.9,-5.6,67,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,13.6,-0.9,-2.4,147,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,16.3,-0.9,-5.6,320,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron",60,23.5,-0.9,-8.9,51,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("lothal", "patron",60,26.3,-0.9,-8.8,317,58000199)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("lothal", "patron",60,19.1,-0.9,6.1,41,58000199)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("lothal", "patron",60,22.2,-0.9,4.3,22,58000199)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("lothal", "patron",60,-3.1,-0.9,11.6,97,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  
  
  pNpc = spawnMobile("lothal", "patron",60,1.2,-0.9,11.6,269,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron_ithorian",60,14.1,-0.9,4.3,51,58000199)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("lothal", "patron_klaatu",60,14.4,-0.9,7.5,139,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("lothal", "patron_quarren",60,17.1,-0.9,7.8,226,58000199)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  

  
  -- Profession Trainers
  spawnMobile("lothal", "trainer_chef",60,11.4,1.1,5.8,178,58000232)
  spawnMobile("lothal", "trainer_tailor",60,11.1,1.1,-11.7,0,58000234)
  spawnMobile("lothal", "trainer_weaponsmith",60,-3.0,1.1,-8.7,117,58000235)
  spawnMobile("lothal", "trainer_droidengineer",60,-10.8,1.1,-12.1,0,58000236)
  spawnMobile("lothal", "trainer_armorsmith",60,-14.9,1.1,0.3,87,58000233)
  spawnMobile("lothal", "trainer_armorweaver",60,-8.5,1.1,3.0,-143,58000233)
  
  spawnMobile("lothal", "trainer_rifleman",60,12.1,1.1,1.7,177,58000343)
  spawnMobile("lothal", "trainer_2hsword",60,11.1,1.1,-11.0,0,58000345)
  spawnMobile("lothal", "trainer_carbine",60,-0.2,1.1,-11.2,0,58000346)
  spawnMobile("lothal", "trainer_polearm",60,-11.0,1.1,-11.7,-5,58000347)
  spawnMobile("lothal", "trainer_creaturehandler",60,-11.7,1.1,3.7,-179,58000344)    
  spawnMobile("lothal", "trainer_artisan",60,11.3,1.1,-10.8,0,58000355)
  spawnMobile("lothal", "trainer_architect",60,3.0,1.1,-9.3,-110,58000356) 
  spawnMobile("lothal", "trainer_politician",60,-0.1,3.2,21.4,180,58000252) 
  spawnMobile("lothal", "trainer_bioengineer",60,10.8,1.1,-11.3,1,58000365)  
  spawnMobile("lothal", "trainer_scout",60,4.8,1.1,-0.8,-94,58000362)
  spawnMobile("lothal", "trainer_ranger",60,-4.5,1.1,-1.4,86,58000362)  
  spawnMobile("lothal", "trainer_marksman",60,-1358,28,-3253.4,92,0)
  spawnMobile("lothal", "trainer_pistol",60,-1370.7,30.5,-3271.6,42,0)  
  spawnMobile("lothal", "trainer_medic",60,24.9,0.3,-0.5,-84,58000271)
  spawnMobile("lothal", "trainer_combatmedic",60,19.3,0.3,10.9,-179,58000271)
  spawnMobile("lothal", "trainer_doctor",60,-29.4,0.3,-5.4,82,58000275) 
  spawnMobile("lothal", "trainer_imagedesigner",60,0.7,0.6,-6.3,-54,58000597)  
  spawnMobile("lothal", "trainer_musician",60,29.0,2.1,74.3,-142,58000313)
  spawnMobile("lothal", "trainer_dancer",60,21.8,2.1,76.0,178,58000313)  
  spawnMobile("lothal", "trainer_smuggler",60,-12.0,1.1,5.2,177,35791510)
  spawnMobile("lothal", "trainer_bountyhunter",60,10.8,1.1,-11.7,0,35791511)
  spawnMobile("lothal", "trainer_commando",60,12.5,1.1,3.7,-171,35791509)
  
  
  

	
	

end
