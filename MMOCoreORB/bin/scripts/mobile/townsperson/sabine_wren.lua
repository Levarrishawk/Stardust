sabine_wren = Creature:new {	
	customName = "Sabine Wren",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {	
	        --"object/mobile/dressed_commoner_naboo_human_female_01.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_02.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_03.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_04.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_05.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_06.iff", --
					"object/mobile/dressed_commoner_naboo_human_female_07.iff",
					--"object/mobile/dressed_commoner_naboo_human_female_08.iff",				
					},
				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(sabine_wren, "sabine_wren")
