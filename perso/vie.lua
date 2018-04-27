function vieload()
    vie = {}
    vie.vie = 200
    vie.viemax = 200
    vie.passivvie = 0.002
    vie.vieq = 20
end
function vieupdate(dt)
    vie.passivvie = 0.002
    pourcentvie = (vie.vie / vie.viemaxlevel) * 100
    vie.vie = vie.vie + vie.passivvie
    if vie.vie >= vie.viemaxlevel then
        vie.vie = vie.viemaxlevel
    end
    if vie.vie < 0 then
        menu = true
        game = false
        lookcharge = false
        restart = true
    end
    if  love.keyboard.isDown("a") and vie.vie < vie.viemaxlevel then
        mana.mana = mana.mana - (mana.manaq * dt)
        vie.vie = vie.vie + (vie.vieq * dt)
    end
end
function viedraw()
    love.graphics.setColor(20, 255, 20)
    love.graphics.rectangle("fill",width/2 - 100, height - 210, pourcentvie * 2, yrec)
    love.graphics.setColor(255, 20, 255)
    love.graphics.print(math.ceil(vie.vie), width/2 - 10 , height - 212)
end
