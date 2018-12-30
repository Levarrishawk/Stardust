krayt_dragon_adolescent = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_adolescent",
	socialGroup = "krayt",
	faction = "",
	level = 200,
	chanceHit = 10,
	damageMin = 445,
	damageMax = 1600,
	baseXp = 28549,
	baseHAM = 72000,
	baseHAMmax = 90000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {55,55,15,15,55,15,15,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/krayt_dragon_hue.iff"},
	scale = 0.7,
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
		{"creatureareacombo",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_adolescent, "krayt_dragon_adolescent")
