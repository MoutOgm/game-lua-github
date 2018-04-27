json = require("json")
require("perso/mana")
require("perso/vie")
require("perso/level")
require("menu")
require("restart")
require("save-charge/look")
require("save-charge/save")
require("save-charge/charge")
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
end
function love.update(dt)
    if game == true then
      levelupdate(dt)
      manaupdate(dt)
      vieupdate(dt)
      restartupdate(dt)
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
