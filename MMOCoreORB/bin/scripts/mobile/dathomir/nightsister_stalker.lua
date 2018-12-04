nightsister_stalker = Creature:new {
	objectName = "@mob/creature_names:nightsister_stalker",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 136,
	chanceHit = 0.85,
	damageMin = 395,
	damageMax = 700,
	baseXp = 9150,
	baseHAM = 40000,
	baseHAMmax = 55000,
	armor = 0,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {40,60,40,75,75,75,75,75,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_stalker.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "color_crystals", chance = 2500000},
				{group = "nightsister_common", chance = 2500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "melee_weapons", chance = 2000000},
			},
			lootChance = 5500000,
		},
		{
			groups = {

				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "carbines", chance = 2500000},
				{group = "wearables_common", chance = 2500000},
			},
			lootChance = 4500000,   -- 45% chance for this g roup
		},	
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmid,tkamid,pikemanmaster,brawlermaster) --NS Powers Removed
}

CreatureTemplates:addCreatureTemplate(nightsister_stalker, "nightsister_stalker")
