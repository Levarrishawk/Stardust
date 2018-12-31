canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:canyon_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 230,
	chanceHit = 27.25,
	damageMin = 520,
	damageMax = 1500,
	baseXp = 26356,
	baseHAM = 101000,
	baseHAMmax = 101000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {160,160,160,160,120,160,160,160,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.25,
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
		{"stunattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(canyon_krayt_dragon, "canyon_krayt_dragon")
