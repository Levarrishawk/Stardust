exar_kun_cultist = Creature:new {
	customName = "an Exar Kun Cultist",
	randomNameTag = true,
	socialGroup = "kun",
	level = 330,
	chanceHit = 0.8,
	damageMin = 1545,
	damageMax = 2100,
	baseXp = 8408,
	baseHAM = 640200,
	baseHAMmax = 940000,
	armor = 0,
	resists = {45,45,45,70,70,70,70,70,10},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY ,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_cultist.iff"},
	lootGroups = {
		{
			groups = { -- DarkJedi LootGroup
				{group = "holocron_dark", chance = 4000000},
				{group = "dark_jedi_common", chance = 6000000},
			},
			lootChance = 10000000,
		},
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 2500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "melee_weapons", chance = 2500000},
				{group = "dark_jedi_common", chance = 2000000},
			},
			lootChance = 8000000,
		},		
		{ -- Veteran Rewards
			groups =
			{
				{group = "veteran_rewards_90_days", chance = 6000000},
				{group = "veteran_rewards_180_days", chance = 3000000},
				{group = "veteran_rewards_360_days", chance = 100000},
				{group = "veteran_rewards_450_days", chance = 900000},
			},
			lootChance = 3000000,
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun_cultist, "exar_kun_cultist")
