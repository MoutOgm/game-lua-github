function vieload()
    vie = {}
    vie.vie = 200
    vie.viemax = 200
    vie.passivvie = 0.002
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
end
function viedraw()
    love.graphics.setColor(20, 255, 20)
    love.graphics.rectangle("fill",0, 0, pourcentvie * 2, yrec)
    love.graphics.setColor(255, 20, 255)
    love.graphics.print(math.ceil(vie.vie), 100 - 10, - 2)
end
