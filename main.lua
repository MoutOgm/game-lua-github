json = require("lib/json")
bump = require("lib/bump")
gamera = require("lib/gamera")
require("perso/mana")
require("perso/vie")
require("perso/level")
require("perso/player")
require("menu")
require("restart")
require("world")
require("save_charge/look")
require("save_charge/save")
require("save_charge/charge")
require("cam")
require("debug")
function love.load()
  width = love.graphics.getWidth()
  height  = love.graphics.getHeight()
  yrec = 10
  love.window.setFullscreen(true)

  lookcharge = false
  game = false

  menuload()
  manaload()
  vieload()
  levelload()

  cols_len = 0
  world = bump.newWorld()
  grave = 10

  addworld()
  playerload()

  camload()

end
function love.update(dt)
  if game == true then
    levelupdate(dt)
    manaupdate(dt)
    vieupdate(dt)
    restartupdate(dt)
    playerupdate(dt)

    camupdate(dt)
  end
  if menu == true then
    menuupdate(dt)
  end
end
function love.draw()
  --montre menu
  if menu == true then
    menudraw()
    restartdraw()
  end
  --montre jeu
  if game == true then
    manadraw()
    viedraw()
    leveldraw()
    cam:draw(function()
      worlddraw()
      playerdraw()
    end)
  end
  --montre game a charger
  if lookcharge == true then
    lookdraw()
  end
end
function love.keypressed(key)
  --quitter
  if key == "escape" then
    love.event.quit()
  end
  --charger
  keypressedcharge(key)
  --voir game a charger
  lookkey(key)
  --entrer / sortir menu
  keypressedmenu(key)
  --enregistrer game
  keypressedsave(key)
end
function printer()
  local debuggame = json.decode(love.filesystem.read("game"))
  local debugmana = debuggame.mana
  local debugvie = debuggame.vie
  local debuglevel = debuggame.level
  local debugplayer = debuggame.player
  print("player.x = "..debugplayer.x)
  print("player.y = "..debugplayer.y)
end
return printer()
