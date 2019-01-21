wod_mutant_rancor_boss = Creature:new {
	customName = "Borvo",
	socialGroup = "nightsister",
  faction = "nightsister",
	level = 4,
	chanceHit = 0.24,
	damageMin = 1400,
	damageMax = 1845,
	baseXp = 62,
	baseHAM = 110003,
	baseHAMmax = 110008,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(wod_mutant_rancor_boss, "wod_mutant_rancor_boss")
