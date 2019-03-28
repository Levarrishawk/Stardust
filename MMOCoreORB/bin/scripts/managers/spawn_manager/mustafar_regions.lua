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
- mustafar_kubaza_beetles

--]]

mustafar_regions = {  
  -- Mensix Region
  {"mensix_southwest_1", -3396, 1305, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_2", -3439, 902, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_3", -3367, 510, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_4", -3266, 122, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_5", -3642, -30, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_lava_fleas"}, 256},
  {"mensix_southwest_6", -4063, 92, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 256},
  {"mensix_southwest_7", -4171, 479, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 256},
  {"mensix_southwest_8", -4042, 866, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 256},
  {"mensix_southwest_9", -3952, 1264, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 256},
  {"mensix_southwest_10", -3672, 1570, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512},  
  {"mensix_southwest_11", -3448, 1905, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512},  
  {"mensix_west_1", -3600, 2274, {1, 400}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_2", -3600, 2274, {1, 300}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_3", -2776, 2414, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_4", -3562, 2393, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_5", -3946, 2484, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_6", -4357, 2519, {1, 200}, NOWORLDSPAWNAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_7", -4719, 2340, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks" , "mustafar_kubaza_beetles"}, 512}, 
  {"mensix_west_8", -5104, 2159, {1, 250}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
  {"mensix_west_9", -5591, 2173, {1, 250}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
  {"mensix_west_10", -5591, 2173, {1, 500}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
  {"mensix_west_11", -5960, 871, {1, 300}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
  {"mensix_west_12", -5933, 459, {1, 200}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
  {"mensix_west_13", -5933, 459, {1, 750}, NOBUILDZONEAREA + SPAWNAREA, {"mustafar_blistmoks"}, 512},
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
  {"sw_bandit_camp", -6170, 10, {1, 100}, NOSPAWNAREA + NOBUILDZONEAREA},
  -- World Spawns
  {"world_spawner", 0, 0, {1, -1}, SPAWNAREA + WORLDSPAWNAREA, {"mustafar_lava_fleas"}, 2048}
}
