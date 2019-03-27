-- Planet Region Definitions
-- This file has been generated with the SWGEmu World Spawner Tool.
--
-- {"regionName", xCenter, yCenter, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {1, radius}
--   - Rectangle: {2, width, height}
--   - Ring: {3, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.spawn_manager.regions")

--[[ 

Mustafar Creature Spawn Groups
- mustafar_lava_fleas
- mustafar_blistmoks
- mustafar_tulrus
- mustafar_tanrays
- mustafar_xandanks
- mustafar_jundaks


--]]

mustafar_regions = {  
  -- Mensix Region
  {"mensix_southwest_1", -3396, 1305, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_2", -3439, 902, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_3", -3367, 510, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_4", -3266, 122, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  -- Old Mining Facility Region
  {"old_mining_facility_1", -2774, 279, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_2", -2746, 681, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_3", -2417, 911, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_4", -2053, 731, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_5", -1752, 455, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_6", -1487, 135, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_7", -1109, -8, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_8", -710, 53, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_9", -303, 62, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"old_mining_facility_10", 88, -132, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  
  -- Areas Cleared of World Spawns
  
  -- World Spawns
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"mustafar_lava_fleas"}, 2048}
}
