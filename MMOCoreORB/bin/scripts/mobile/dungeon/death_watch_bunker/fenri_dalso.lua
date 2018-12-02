fenri_dalso = Creature:new {
	objectName = "",
	customName = "Fenri Dalso",
	socialGroup = "death_watch",
	faction = "",
	level = 278,
	chanceHit = 12.25,
	damageMin = 700,
	damageMax = 900,
	baseXp = 16794,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 1,
	resists = {75,75,90,80,45,45,100,70,20},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_silver.iff"},
	lootGroups = {
		{
			groups = {
				{group = "fenri_dalso_drop", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 750000
		}

	},
	weapons = {"death_watch_commander_weapons"},
	conversationTemplate = "",
	attacks = merge(carbineermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(fenri_dalso, "fenri_dalso")
