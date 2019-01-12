exar_kun_caretaker = Creature:new {
	customName = "The Caretaker of Lost Souls",
	randomNameTag = true,
	socialGroup = "kun",
	faction = "kun",
	level = 4,
	chanceHit = 0.24,
	damageMin = 1540,
	damageMax = 1845,
	baseXp = 62,
	baseHAM = 225000,
	baseHAMmax = 225000,
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

	templates = {"object/mobile/exar_kun_caretaker.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(exar_kun_caretaker, "exar_kun_caretaker")
