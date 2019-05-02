imperial_genocide_coordinator = ConvoTemplate:new {
  initialScreen = "imperial_genocide_coordinator_start",
  templateType = "Lua",
  luaClassHandler = "imperial_genocide_coordinator_convo_handler",
  screens = {}
}


--Intro First
imperial_genocide_coordinator_start = ConvoScreen:new {
  id = "imperial_genocide_coordinator_start",
  leftDialog = "",
  customDialogText = "Greetings citizen.  I represent the Empire's interests for ongoing activities on Endor in demonstrating to the native population what it means to cross the Empire.  If you are here to collect a bounty, I am authorized to requisition supplies for the appropriate collateral.",
  stopConversation = "false",
  options = {
    {"Demonstrating to the native population how?", "opt1"},
    {"What sort of Supplies can I requisition?", "opt2"},
   -- {"Why would the Republic want to keep this building even standing?", "opt3"},
    {"Nevermind.", "deny1"}
  
  }
}
imperial_genocide_coordinator:addScreen(imperial_genocide_coordinator_start);

--deny
deny1 = ConvoScreen:new {
  id = "deny1",
  leftDialog = "",
  customDialogText = "Move along citizen.",
  stopConversation = "true",
  options = {
  }
}
imperial_genocide_coordinator:addScreen(deny1);




opt1 = ConvoScreen:new {
  id = "opt1",
  leftDialog = "",
  customDialogText = "The primitives of this world sided with the Rebellion against the Empire, they are called Ewoks and Duloks.  Unfortunately the Imperial Military is otherwise occupied in putting down the insurgence of the New Republic, but we have been authorized to issue bounty for any patriotic citizen willing to participate in this program.",
  stopConversation = "false",
  options = {
    {"What do I need to do?","opt1a"},
  }
}
imperial_genocide_coordinator:addScreen(opt1);

opt1a = ConvoScreen:new {
  id = "opt1a",
  leftDialog = "",
  customDialogText = "Kill any Ewok or Dulok you find. Collect their Crossbows.  Bring the Crossbows to me in order to requisition certain items.",
  stopConversation = "false",
  options = {
    {"What can I requisition?","opt2"},
  }
}
imperial_genocide_coordinator:addScreen(opt1a);

opt2 = ConvoScreen:new {
  id = "opt2",
  leftDialog = "",
   customDialogText = "Here is a list of the available items.",
  stopConversation = "false",
  options = {
     {"Xeno Desk","item1"},
     {"Xeno Desk Lamp","item2"},
     {"Xeno Throne","item3"},
     {"Xeno Couch","item4"},
     {"Xeno Desk","item5"},
     {"Xeno Table","item6"},
     {"Xeno Rug","item7"},
     {"Emperor's Desk","item8"},
     {"Emperor's Chair","item9"},
     {"Emperor's Desk Lamp","item10"},
  }
}
imperial_genocide_coordinator:addScreen(opt2);

item1 = ConvoScreen:new {
  id = "item1",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item1);

item2 = ConvoScreen:new {
  id = "item2",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item2);

item3 = ConvoScreen:new {
  id = "item3",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item3);

item4 = ConvoScreen:new {
  id = "item1=4",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item4);

item5 = ConvoScreen:new {
  id = "item1",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item5);

item6 = ConvoScreen:new {
  id = "item6",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item6);

item6 = ConvoScreen:new {
  id = "item6",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item6);

item7 = ConvoScreen:new {
  id = "item7",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item7);

item8 = ConvoScreen:new {
  id = "item8",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item8);

item9 = ConvoScreen:new {
  id = "item9",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item9);

item10 = ConvoScreen:new {
  id = "item10",
  leftDialog = "",
   customDialogText = "Your item has been requisitioned.",
  stopConversation = "true",
  options = {
    -- {"Is that why you are standing here staring the palace?","item1"},
  }
}
imperial_genocide_coordinator:addScreen(item10);


addConversationTemplate("imperial_genocide_coordinator", imperial_genocide_coordinator);
