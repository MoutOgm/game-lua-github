function manaload()
    mana = {}
    mana.passivmana = 0.02
    mana.mana = 200
    mana.manamax = 200
    mana.space = 50
    mana.min = 10
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
end
function manadraw()
    love.graphics.setColor(20, 20, 255)
    love.graphics.rectangle("fill",0, 10, pourcentmana * 2, yrec)
    love.graphics.setColor(255, 255, 20)
    love.graphics.print(math.ceil(mana.mana), 100 - 10 , 8)
end
