exar_kun_warrior_f = Creature:new {
	customName = "The Executioner",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 4,
	chanceHit = 0.24,
	damageMin = 750,
	damageMax = 1750,
	baseXp = 62,
	baseHAM = 75000,
	baseHAMmax = 75000,
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

	templates = {"object/mobile/exar_kun_warrior_f.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(exar_kun_warrior_f, "exar_kun_warrior_f")
