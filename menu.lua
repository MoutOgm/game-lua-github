function menuload()
    menu = true
end
function menuupdate(dt)
    mana.passivmana = 0
    vie.passivvie = 0
end
function menudraw()
    love.graphics.setColor(255, 255, 255)

    love.graphics.print("appuyer sur \'n\' pour lancer une partie", 0, 0)
    love.graphics.print("charger game : \'m\'", 0, 12)
    love.graphics.print("sauvegarder : \'l\'", 0, 24)
    love.graphics.print("voir derniere sauvegarde (en jeu) \'p\'", 0, 36)
end
function keypressedmenu(key)
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
end
