function lookdraw()
    love.graphics.setColor(255, 255, 255)
    --mana
    love.graphics.print("charge game : ", 0, 0)
    love.graphics.print("regen mana passive : "..manaprint.passivmana, 0, 12)
    love.graphics.print("regen avec space : "..manaprint.spacemana, 0, 24)
    love.graphics.print("cout mana q : "..manaprint.manaq, 0, 36)
    love.graphics.print("mana : "..math.ceil(manaprint.mana), 0, 48)
    love.graphics.print("mana max : "..manaprint.manamax, 0, 60)
    --vie
    love.graphics.print("regen vie passive : "..vieprint.passivvie, 0, 80)
    love.graphics.print("regen vie q : "..vieprint.vieq, 0, 92)
    love.graphics.print("vie : "..math.ceil(vieprint.vie), 0, 104)
    love.graphics.print("vie max : "..vieprint.viemax, 0, 116)
    --level
    love.graphics.print("votre level : "..levelprint.level, 0, 136)
    love.graphics.print("votre xp : "..level.xp, 0, 148)
    love.graphics.print("l'xp manquante : "..level.xpmaxlevel - level.xp, 0, 160)
end
function lookkey(key)
    if key == "p" then
        if menu ==  false then
            if lookcharge == true then
                lookcharge = false
                game = true
            elseif lookcharge == false then

                mana1 = love.filesystem.read("mana") --charge mana
                manaprint = json.decode(mana1) -- tradcharge mana

                vie1 = love.filesystem.read("vie") --charge vie
                vieprint = json.decode(vie1) -- tradcharge vie

                level1 = love.filesystem.read("level") --charge level
                levelprint = json.decode(level1) -- tradcharge level

                lookcharge = true
                game = false
            end
        end
    end
end
