LohthalCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LohthalCityScreenPlay",
	
	planet = "lothal",
}

registerScreenPlay("LohthalCityScreenPlay", true)

function LohthalCityScreenPlay:start()
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
  
  --cantina
 
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
  
  -- Starport
  pNpc = spawnMobile(self.planet, "info_broker",60,8.5,0.6,74.4,-77,58000174) --1855672
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "noble",60,56.669,-0.521137,33.7689,180.017,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "contractor",300,37.163,0.639417,40.7061,180.01,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",60,-4.61669,0.639424,67.8263,180.012,58000177) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "bounty_hunter",300,8.65132,0.639421,75.5483,256.69,58000174) --1855672
  self:setMoodString(pNpc, "calm")
  pNpc = spawnMobile(self.planet, "businessman",60,37.163,0.639417,39.6061,0,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "scientist",60,56.669,-0.521137,32.6689,360.011,58000180) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "shadowy_figure",60,-4.61669,0.639424,66.7263,0,58000177) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "farmer",60,-62.7673,2.63942,40.6604,360.011,58000185) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",300,-62.7673,2.63942,41.7604,179.995,58000185) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "trainer_shipwright",60,-0.1,0.6,67.1,-179,58000177) --1855675
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,8.5,0.6,74.4,-77,58000285) --1855672
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "noble",60,56.669,-0.521137,33.7689,180.017,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "contractor",300,37.163,0.639417,40.7061,180.01,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",60,-4.61669,0.639424,67.8263,180.012,58000288) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "bounty_hunter",300,8.65132,0.639421,75.5483,256.69,58000285) --1855672
  self:setMoodString(pNpc, "calm")
  pNpc = spawnMobile(self.planet, "businessman",60,37.163,0.639417,39.6061,0,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "scientist",60,56.669,-0.521137,32.6689,360.011,58000291) --1855678
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "pirate",60,-4.61669,0.639424,66.7263,0,58000288) --1855675
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "farmer",60,-62.7673,2.63942,40.6604,360.011,58000296) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "mercenary",300,-62.7673,2.63942,41.7604,179.995,58000296) --1855683
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "trainer_shipwright",60,-0.1,0.6,67.1,-179,58000288) --1855675
  self:setMoodString(pNpc, "neutral")
	
	
	pNpc = spawnMobile(self.planet, "patron",60,-1369.8,28,-3162.6,-78,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "patron",60,-1373.7,28,-3161.4,109,0) 
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile(self.planet, "businessman",60,-1376.7,28,-3171.8,-15,0)
  
  pNpc = spawnMobile(self.planet, "patron",60,-1388.7,28,-3163.4,14,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "patron",60,-1387.6,28,-3160.6,-153,0) 
  self:setMoodString(pNpc, "conversation")
  
  spawnMobile(self.planet, "junk_dealer",60,-1467.1,28,-3177.3,-0,0)
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1365,28,-3044,122,0) 
  self:setMoodString(pNpc, "npc_accusing")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1363.4,28,-3046.9,-54,0) 
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile(self.planet, "entertainer",60,-45,0.1,-18.5,-47,58000211) 
  self:setMoodString(pNpc, "npc_accusing")
  pNpc = spawnMobile(self.planet, "commoner",60,-47.5,0.1,-16.5,124,58000211) 
  self:setMoodString(pNpc, "npc_consoling")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1215.7,28,-3089.5,90,0) 
  self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "patron",60,-1213.1,28,-3089.8,-83,0) 
  self:setMoodString(pNpc, "conversation")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1216.6,28,-3101.9,90,0) 
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile(self.planet, "patron",60,-1212.8,28,-3103.9,175,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "vendor",60,-1162.6,28,-3111.1,-174,0) 
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile(self.planet, "commoner",60,-1178.6,28,-3172.8,-94,0) 
  self:setMoodString(pNpc, "npc_use_terminal_high")
  
  pNpc = spawnMobile(self.planet, "scientist",60,-1230.4,28,-3175.7,-52,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "artisan",60,-1234.8,28,-3173.2,93,0) 
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile(self.planet, "entertainer",60,-1229.8,28,-3170.7,-147,0) 
  self:setMoodString(pNpc, "conversation")
  
end
