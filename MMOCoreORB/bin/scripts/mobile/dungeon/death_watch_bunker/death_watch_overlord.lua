death_watch_overlord = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_gold",
  randomNameType = NAME_GENERIC,
  randomNameTag = true,
	socialGroup = "death_watch",
  faction = "",
	level = 221,
	chanceHit = 1.3,
	damageMin = 800,
	damageMax = 1100,
	baseXp = 20948,
	baseHAM = 150000,
	baseHAMmax = 250000,
	armor = 1,
	resists = {80,80,90,80,45,45,100,70,25},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  500000},
				{group = "death_watch_bunker_overlord_quest", chance  = 9500000}
			},
			lootChance = 5000000
		},
		{
      groups = {
        {group = "dwb_weapons", chance =  500000},
        {group = "dwb_weapons", chance  = 9500000}
      },
      lootChance = 5000000
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
			lootChance = 2000000
		},		
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pikemanmaster,marksmanmaster),
	attacks = {{"intimidationattack","stateAccuracyBonus=100"},
		},
}

CreatureTemplates:addCreatureTemplate(death_watch_overlord, "death_watch_overlord")
