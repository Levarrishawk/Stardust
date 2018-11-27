enhanced_force_jawa_lord = Creature:new {
	customName = "Dun Chub Wub",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 500,
	chanceHit = 45, -- Always Hits
	damageMin = 1100,
	damageMax = 2900,
	baseXp = 9296845,
	baseHAM = 2306000,
	baseHAMmax = 2652000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {65,65,65,65,65,65,65,65,25},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_ewok_m_09.iff"},
	scale = 2.5,
	lootGroups = {},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(enhanced_force_jawa_lord, "enhanced_force_jawa_lord")
