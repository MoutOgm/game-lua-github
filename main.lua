json = require("json")
require("mana")
require("vie")
require("menu")
require("restart")
require("look")
require("level")
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
end
function love.update(dt)
    if game == true then
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
    --sauvegarder
    if key == "m" then
        mana = json.decode(mana1)
        vie = json.decode(vie1)
    end
    --voir game a charger
    lookkey(key)
    --entrer / sortir menu
    if key == "n" then
        if game == true or lookcharge == true then
            menu = true
            game = false
            lookcharge = false
        elseif game == false and lookcharge == false then
            game = true
            menu = false
            restart = false
        end
    end
    --enregistrer game
    if key == "l"  then
        saverstringmana =  json.encode(mana) -- tradsave mana
        saverendmana = love.filesystem.write("save/mana", saverstringmana) --save mana
        saverstringvie =  json.encode(vie) -- tradsave vie
        saverendvie = love.filesystem.write("save/vie", saverstringvie) --save vie

        mana1 = love.filesystem.read("save/mana") --charge mana
        manaprint = json.decode(mana1) -- tradcharge mana

        vie1 = love.filesystem.read("save/vie") --charge vie
        vieprint = json.decode(vie1) -- tradcharge vie
    end
end