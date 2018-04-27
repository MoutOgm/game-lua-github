function restartdraw()
    if restart == true then
        love.graphics.print("loose",  width/2 - 10, height/2 - 10)
    end
end
function restartupdate(dt)
    if restart == true then
        vie.vie = 200
        mana.mana = 200
    end
end
