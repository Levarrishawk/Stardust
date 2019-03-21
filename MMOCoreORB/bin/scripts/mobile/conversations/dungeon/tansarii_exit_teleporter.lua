tansarii_exit_teleporter = ConvoTemplate:new {
  initialScreen = "first_conv",
  templateType = "Lua",
  luaClassHandler = "tansarii_exit_teleporter_convo_handler",
  screens = {}
}


--Intro First
first_conv = ConvoScreen:new {
  id = "first_conv",
  leftDialog = "",
  customDialogText = "You need to hitch a ride? I am heading to Coruscant, but you'll have to ride in the cargo hold. Not enough room in the Cabin for you.",
  stopConversation = "false",
  options = {
    {"Whatever, just get me out of this place.", "mayor2"},
  --  {"Instance 2", "mayor3"},
 --   {"Instance 3", "mayor4"},
  --  {"Instance 4", "mayor5"},
    {"On second thought, I'll pass.", "deny"}
  
  }
}
tansarii_exit_teleporter:addScreen(first_conv);

--deny
deny = ConvoScreen:new {
  id = "deny",
  leftDialog = "",
  customDialogText = "Suit yourself pal.",
  stopConversation = "true",
  options = {
  }
}
tansarii_exit_teleporter:addScreen(deny);




mayor2 = ConvoScreen:new {
  id = "mayor2",
  leftDialog = "",
  customDialogText = "Next stop, Coruscant.",
  stopConversation = "true",
  options = {
  --   {"I see. What would I have to do?","mayor3"},
  }
}
tansarii_exit_teleporter:addScreen(mayor2);





addConversationTemplate("tansarii_exit_teleporter", tansarii_exit_teleporter);
