blurrg_raptor = Creature:new {
	objectName = "@mob/creature_names:blurrg_raptor",
	socialGroup = "blurrg",
	faction = "",
	level = 140,
	chanceHit = 1.5,
	damageMin = 300,
	damageMax = 900,
	baseXp = 13367,
	baseHAM = 45000,
	baseHAMmax = 85000,
	armor = 1,
	resists = {65,65,65,65,65,65,65,65,25},
	meatType = "meat_carnivore",
	meatAmount = 123,
	hideType = "hide_leathery",
	hideAmount = 123,
	boneType = "bone_avian",
	boneAmount = 123,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/blurrg_hue.iff"},
	scale = 2.0,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blurrg_raptor, "blurrg_raptor")
