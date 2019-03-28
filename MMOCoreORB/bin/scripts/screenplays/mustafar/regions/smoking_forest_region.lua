local ObjectManager = require("managers.object.object_manager")


smoking_forest_region = ScreenPlay:new {
  numberOfActs = 1,

  screenplayName = "smoking_forest_region"
}

registerScreenPlay("smoking_forest_region", true)

function smoking_forest_region:start()
  if (isZoneEnabled("mustafar")) then
    self:spawnMobiles()
    self:spawnSceneObjects()
  end
end

function smoking_forest_region:spawnSceneObjects()
--Entry
--  spawnSceneObject("yavin4", "object/tangible/terminal/terminal_elysium_crystal_01.iff", -11.5, -19.3, 38.3, 8525439, math.rad(0) )
 

end

function smoking_forest_region:spawnMobiles()

-- Canyon Approach Phantom Bandits near Escape Pod

  local pMinerHens = spawnMobile("mustafar", "miner_hens",120,-5406.1,296.0,4429.8,29,0)
  self:setMoodString(pPhantom1, "neutral")
  local pForemanNurfa = spawnMobile("mustafar", "foreman_nurfa",120,-5396.5,296.0,4447.8,-163,0)
  self:setMoodString(pPhantom1, "neutral")
  
  -- Striking Miners
  local pStrikingMiner1 = spawnMobile("mustafar", "miner_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner1, "idlewander")
  local pStrikingMiner2 = spawnMobile("mustafar", "miner_on_strike",120,-5362.1,294,4445.3,-163,0)
  self:setMoodString(pStrikingMiner2, "idlewander")
  local pStrikingMiner3 = spawnMobile("mustafar", "miner_on_strike",120,-5366.3,294,4464.7,-163,0)
  self:setMoodString(pStrikingMiner3, "idlewander")
  local pStrikingMiner4 = spawnMobile("mustafar", "miner_on_strike",120,-5390.11,296,4467.5,-87,0)
  self:setMoodString(pStrikingMiner4, "idlewander")
  local pStrikingMiner5 = spawnMobile("mustafar", "miner_on_strike",120,-5417.3,294,4461.9,-112,0)
  self:setMoodString(pStrikingMiner5, "idlewander")
  local pStrikingMiner6 = spawnMobile("mustafar", "miner_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner6, "idlewander")
  local pStrikingMiner7 = spawnMobile("mustafar", "miner_foreman_on_strike",120,-5375.1,294,4439.8,-163,0)
  self:setMoodString(pStrikingMiner7, "idlewander")
  local pStrikingMiner8 = spawnMobile("mustafar", "miner_foreman_on_strike",120,-5295.31,316,4492.5,-163,0)
  self:setMoodString(pStrikingMiner8, "idlewander")
  local pStrikingMiner9 = spawnMobile("mustafar", "miner_on_strike",120,-5286,316,4478,-163,0)
  self:setMoodString(pStrikingMiner9, "idlewander")
  local pStrikingMiner9 = spawnMobile("mustafar", "miner_on_strike",120,-5276,316,4486,-163,0)
  self:setMoodString(pStrikingMiner9, "idlewander")
   
end
