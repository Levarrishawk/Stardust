failed_ns_clone = Creature:new {
	customName = "A Failed Nightsister Clone",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 275,
	chanceHit = 15.5,
	damageMin = 620,
	damageMax = 750,
	baseXp = 28654,
	baseHAM = 191000,
	baseHAMmax = 232000,
	armor = 1,
	-- {kinetic,energy,blast,heat,cold,electricity,acid,stun,ls}
	resists = {55,55,55,55,55,55,55,55,15},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(failed_ns_clone, "failed_ns_clone")
