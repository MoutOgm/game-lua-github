function camload()
  camworld = {width = 4800, height = 900}
  cam = gamera.new(0, 0, 1600, 900)
  cam:setWorld(0, 0, ground[1].w, 900)
end
function camupdate(dt)
  cam:setPosition(player.x, player.y)
end
