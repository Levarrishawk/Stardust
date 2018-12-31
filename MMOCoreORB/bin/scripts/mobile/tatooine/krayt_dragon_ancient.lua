krayt_dragon_ancient = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	socialGroup = "krayt",
	faction = "",
	level = 335,
	chanceHit = 25,
	damageMin = 645,
	damageMax = 1600,
	baseXp = 28549,
	baseHAM = 200000,
	baseHAMmax = 200000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {65,65,65,65,65,65,65,65,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/krayt_dragon.iff"},
	scale = 2.0,
	lootGroups = {
    {
          groups = {
        {group = "krayt_tissue_rare", chance = 2000000},
        {group = "krayt_dragon_common", chance = 2500000},
        {group = "krayt_pearls", chance = 1500000},
        {group = "armor_all", chance = 2000000},
        {group = "weapons_all", chance = 2000000},
      },
      lootChance = 7720000
    }
},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_ancient, "krayt_dragon_ancient")
