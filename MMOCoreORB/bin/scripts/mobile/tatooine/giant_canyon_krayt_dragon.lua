giant_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:giant_canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 240,
	chanceHit = 17.5,
	damageMin = 645,
	damageMax = 1500,
	baseXp = 28549,
	baseHAM = 185000,
	baseHAMmax = 185000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {70,70,70,70,65,70,70,70,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.5,
	lootGroups = {
    {
          groups = {
        {group = "krayt_dragon_common", chance = 2500000},
        {group = "krayt_tissue_uncommon", chance = 2000000},
        {group = "krayt_pearls", chance = 1500000},
        {group = "armor_all", chance = 2000000},
        {group = "weapons_all", chance = 2000000},
      },
      lootChance = 7000000
    }
},

	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon, "giant_canyon_krayt_dragon")
