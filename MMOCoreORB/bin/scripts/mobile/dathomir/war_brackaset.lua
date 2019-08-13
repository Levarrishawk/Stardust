war_brackaset = Creature:new {
	objectName = "",
	customName = "a War Brackaset"
	socialGroup = "brackaset",
	faction = "",
	level = 375,
	chanceHit = 27.25,
	damageMin = 520,
	damageMax = 1250,
	baseXp = 26356,
	baseHAM = 120000,
	baseHAMmax = 138000,
	armor = 0,
	resists = {30,30,30,30,30,30,30,30,30},
	meatType = "meat_wild",
	meatAmount = 1230,
	hideType = "hide_leathery",
	hideAmount = 1230,
	boneType = "bone_mammal",
	boneAmount = 1230,
	milkType = "milk_wild",
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/brackaset_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/brackaset_hue.iff",
	lootGroups = {
		 {
	        groups = {
				{group = "brackaset_common", chance = 10000000}
			},
			lootChance = 1520000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(war_brackaset, "war_brackaset")
