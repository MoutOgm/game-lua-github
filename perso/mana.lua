function manaload()
    mana = {}
    mana.passivmana = 0.02
    mana.spacemana = 10
    mana.manaq = 10
    mana.mana = 200
    mana.manamax = 200
end
function manaupdate(dt)
    mana.passivmana = 0.02
    pourcentmana = (mana.mana / mana.manamaxlevel)*100
    mana.mana = mana.mana + mana.passivmana
    if mana.mana >= mana.manamaxlevel then
        mana.mana = mana.manamaxlevel
    end
    if mana.mana < 0 then
        mana.mana = 0
    end
    if love.keyboard.isDown("space") then
            mana.mana = mana.mana + (mana.spacemana * dt)
    end
end
function manadraw()
    love.graphics.setColor(20, 20, 255)
    love.graphics.rectangle("fill",width/2 - 100, height - 200, pourcentmana * 2, yrec)
    love.graphics.setColor(255, 255, 20)
    love.graphics.print(math.ceil(mana.mana), width/2 - 10 , height - 202)
end
