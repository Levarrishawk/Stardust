mellichae = Creature:new {
	objectName = "@mob/creature_names:mellichae",
	socialGroup = "sith_shadow",
	faction = "sith_shadow",
	level = 140,
	chanceHit = 4.750000,
	damageMin = 545,
	damageMax = 850,
	baseXp = 13273,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_village_enemy_mellichae.iff"},
	lootGroups = {
    {
      groups = {
        {group = "holocron_dark", chance = 600000},
        {group = "holocron_light", chance = 600000},
        {group = "crystals_premium", chance = 600000},
        {group = "crystal_kuns_blood", chance = 300000},
        {group = "color_crystals", chance = 1300000},
        {group = "kaas_weapons", chance = 1300000},
        {group = "armor_attachments", chance = 1100000},
        {group = "clothing_attachments", chance = 1100000},
        {group = "krayt_pearls", chance = 300000},
        {group = "dark_jedi_common", chance = 800000}
      }
    }
  },
	weapons = {"dark_jedi_weapons_gen2"},
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(mellichae, "mellichae")
