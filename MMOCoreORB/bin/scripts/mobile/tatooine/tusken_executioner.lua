tusken_executioner = Creature:new {
	objectName = "@mob/creature_names:tusken_executioner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 200, 
	chanceHit = 15.25,
	damageMin = 660,
	damageMax = 800,
	baseXp = 26654,
	baseHAM = 21000,
	baseHAMmax = 52000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {25,25,25,25,25,25,25,25,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 2500000},
				{group = "color_crystals", chance = 1000000},
				{group = "tusken_common", chance = 400000},
				{group = "clothing_attachments", chance = 1500000},  -- 90% * 15% = 13.5%
				{group = "armor_attachments", chance = 1500000},  -- 90% * 15% = 13.5%
				{group = "melee_weapons", chance = 2000000},
			},
			lootChance = 2500000,  -- 90% chance for this group
		},
		{
			groups = {

				{group = "rifles", chance = 2500000},
				{group = "pistols", chance = 2500000},
				{group = "carbines", chance = 2500000},
				{group = "wearables_rare", chance = 1500000},
				{group = "wearables_scarce", chance = 1000000},
			},
			lootChance = 2500000, -- 75% chance for this group
		},		
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_executioner, "tusken_executioner")
