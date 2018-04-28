function printer()
  local debuggame = json.decode(love.filesystem.read("game"))
  local debugmana = debuggame.mana
  local debugvie = debuggame.vie
  local debuglevel = debuggame.level
  local debugplayer = debuggame.player
  print("player.x a charger = "..debugplayer.x)
  print("player.y a charger = "..debugplayer.y)
  print("player.x = "..player.x)
  print("player.y = "..player.y)
end
