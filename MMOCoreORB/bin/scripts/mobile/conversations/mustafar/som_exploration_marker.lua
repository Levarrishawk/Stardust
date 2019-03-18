jo_kelsev = ConvoTemplate:new {
  initialScreen = "first_screen",
  templateType = "Lua",
  luaClassHandler = "jo_kelsev_conv_handler",
  screens = {}
}


--Intro First
jo_kelsev_first_screen = ConvoScreen:new {
  id = "first_screen",
  leftDialog = "@conversation/som_exploration_marker:s_15",  -- Welcome to our fiery moon. I have noticed you around and was hoping for a chance to speak with you. You seem very interested in helping others and I was wondering if you would be willing to perform a small task for me?
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_17", "opt1"},  -- Sure. What is it you need?
    {"@conversation/som_exploration_marker:s_74.", "deny"}  -- No thanks.  I think I will pass on this job.
  
  }
}
jo_kelsev:addScreen(jo_kelsev_first_screen);

jo_kelsev_deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "@conversation/som_exploration_marker:s_78",  -- Of course. I wouldn't want to impose on you too much.
  stopConversation = "true",
  options = {
   -- {"@conversation/som_exploration_marker:s_17", "opt1"}, 
   -- {"@conversation/som_exploration_marker:s_74.", "deny"}
  
  }
}
jo_kelsev:addScreen(jo_kelsev_deny);



opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "@conversation/som_exploration_marker:s_19", -- Well, I have put up a number of markers around the planet. They are very helpful to keep track of certain important areas. Our world has a tendency to shift unexpectedly and it is important that we carefully mark different areas. Naturally, the markers also shift, so we occasionally have to manually check them out to make sure they are still valid.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_21","opt1a"}, -- Naturally.  So what is it I can do for you?
    --{"No.","deny1"},
  }
}
jo_kelsev:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "@conversation/som_exploration_marker:s_23", -- Well, recent events have left me extremely short-handed, and I was hoping that you would check out these markers for me. The job is really simple. All you need to do is find the markers and activate them to make sure they still have valid information on them.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_25","opt1b"},  -- That seems easy enough.
  }
}
jo_kelsev:addScreen(opt1a);

opt1b = ConvoScreen:new {
  id = "opt1b",
  leftDialog = "@conversation/som_exploration_marker:s_27", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_29","opt1c"},  -- What would this sort of job pay?
  }
}
jo_kelsev:addScreen(opt1b);

opt1c = ConvoScreen:new {
  id = "opt1c",
  leftDialog = "@conversation/som_exploration_marker:s_31", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_33","opt1d"},  -- What is a Tanray Heart Crystal?
  }
}
jo_kelsev:addScreen(opt1c);

opt1d = ConvoScreen:new {
  id = "opt1d",
  leftDialog = "@conversation/som_exploration_marker:s_35", -- It would be, except that due to the shifting of our moon's surface, I cannot give you precise locations. All I can do is give you general directions to where each one should be. Each of Mustafar's main areas has several of these markers scattered throughout them. I will need you to activate each area's markers individually.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_37","choose_search_location"},  -- Okay, we have a deal
    {"@conversation/som_exploration_marker:s_76","deny"}  -- Not right now.  Maybe later.
  }
}
jo_kelsev:addScreen(opt1d);

choose_search_location = ConvoScreen:new {
  id = "choose_search_location",
  leftDialog = "@conversation/som_exploration_marker:s_44", -- Excellent. So what area would you like to search for markers in? We have markers near the mining facility, in the Crystal Flats, up in the Smoking Forest, around the Central Volcano, in the Burning Plains, all over Berken's Flow, and, of course, in the Tulrus Nesting Grounds.
  stopConversation = "false",
  options = {
    {"@conversation/som_exploration_marker:s_46","choose_facility"},  
    {"@conversation/som_exploration_marker:s_50","choose_crystal_flats"},  
    {"@conversation/som_exploration_marker:s_54","choose_smoking_forest"},  
    {"@conversation/som_exploration_marker:s_58","choose_central_volcano"},  
    {"@conversation/som_exploration_marker:s_62","choose_burning_plains"},  
    {"@conversation/som_exploration_marker:s_66","choose_berkens_flow"},
    {"@conversation/som_exploration_marker:s_70","choose_tulrus_nesting_grounds"}    
  }
}
jo_kelsev:addScreen(choose_search_location);

-- TODO  Finish this convo, tie it to NPC, convo flow is probably not properly set atm.  - 3/17

addConversationTemplate("jo_kelsev", jo_kelsev);
