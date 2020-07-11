function love.load()
  -- body...
  birdY = 200
  birdYSpeed = 0
  playingAreaWidth = 300
  playingAreaHeight = 388

  --etc
  local pipeSpaceYMin = 54
  pipeSpaceHeight = 100
  pipeSpaceY = love.math.random(pipeSpaceYMin, playingAreaHeight - pipeSpaceHeight)
  pipeX = playingAreaWidth
end

function love.update(dt)
  -- body...
  birdYSpeed = birdYSpeed + (516 * dt)
  birdY = birdY + (birdYSpeed * dt)
  pipeX = pipeX - (60 * dt)
end

function love.keypressed(key)
  -- body...
  love.load()
  if birdY > 0 then
    birdYSpeed = -165
  end
end

function love.draw()
    -- etc.

    local pipeWidth = 54

    -- play area
    love.graphics.setColor(.14, .36, .46)
    love.graphics.rectangle('fill', 0, 0, playingAreaWidth, playingAreaHeight)

    -- bird

    love.graphics.setColor(.87, .84, .27)
    love.graphics.rectangle('fill', 62, birdY, 30, 25)

    -- pipe

    love.graphics.setColor(.37, .82, .28)
    love.graphics.rectangle(
        'fill',
        pipeX,
        0,
        pipeWidth,
        pipeSpaceY
    )
    love.graphics.rectangle(
        'fill',
        pipeX,
        pipeSpaceY + pipeSpaceHeight,
        pipeWidth,
        playingAreaHeight - pipeSpaceY - pipeSpaceHeight
    )
end
