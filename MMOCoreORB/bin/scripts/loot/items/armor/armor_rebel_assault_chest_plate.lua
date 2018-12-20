armor_rebel_assault_chest_plate = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "New Republic Trooper Armor Chest Plate",
	directObjectTemplate = "object/tangible/wearables/armor/rebel_assault/armor_rebel_assault_chest_plate.iff",
	craftingValues = {
		{"armor_rating",1,1,0},
    {"armor_effectiveness",60,70,10},
    {"armor_integrity",30000, 55000,0},
    {"armor_health_encumbrance",0,0,0},
    {"armor_action_encumbrance",0,0,0},
    {"armor_mind_encumbrance",0,0,0},
	},
	skillMods = {

	},
	

	junkDealerTypeNeeded = JUNKARMOUR,
	junkMinValue = 55,
	junkMaxValue = 110
}

addLootItemTemplate("armor_rebel_assault_chest_plate", armor_rebel_assault_chest_plate)
