mother_talzin = Creature:new {
	objectName = "@mob/creature_names:gethzerion",
	customName = "Mother Talzin",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 400,
	chanceHit = 1,
	damageMin = 2000,
	damageMax = 2500,
	baseXp = 94290,
	baseHAM = 500000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {10,10,10,10,10,10,10,10,10},
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
  creatureBitmask = PACK + KILLER,
  optionsBitmask = AIENABLED,
  diet = HERBIVORE,

	templates = {"object/mobile/gethzerion.iff"},
	lootGroups = {
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },
    {
      groups = {
        {group = "crystal_mauls_vengeance", chance = 2000000},
        {group = "nge_jedi_cloaks", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    }, 
    {
      groups = {
        {group = "holocron_dark", chance = 2000000},
        {group = "power_crystals", chance = 2000000},
        {group = "nightsister_common", chance = 2000000},
        {group = "clothing_attachments", chance = 2000000},
        {group = "armor_attachments", chance = 2000000},
      },
      lootChance = 10000000,
    },  
    {
      groups = {
        {group = "nge_jedi_cloaks", chance = 5000000},        
      },
      lootChance = 5000000,
    }, 
    {
      groups = {
        {group = "exar_kun_furniture", chance = 10000000},       
      },
      lootChance = 5000000,
    }, 
    {
      groups = {
        {group = "jedi_house_deeds", chance = 10000000},       
      },
      lootChance = 1000000,
    },       
  },
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmid,fencermid,tkamid,pikemanmid,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(mother_talzin, "mother_talzin")