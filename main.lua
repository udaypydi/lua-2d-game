function love.load()
  -- body...
  birdY = 200
  birdYSpeed = 0
  playingAreaWidth = 300
  playingAreaHeight = 388

  --etc
  pipeSpaceHeight = 100
  pipeSpaceY = love.math.random(0, playingAreaHeight - pipeSpaceHeight)
end

function love.update(dt)
  -- body...
  birdYSpeed = birdYSpeed + (516 * dt)
  birdY = birdY + (birdYSpeed * dt)
end

function love.keypressed(key)
  -- body...
  if birdY > 0 then
    birdYSpeed = -165
  end
end

-- function love.draw()
--   love.graphics.setColor(.14, .36, .46)
--   love.graphics.rectangle('fill', 0, 0, playingAreaWidth, playingAreaHeight)
--   love.graphics.setColor(.87, .84, .27)
--   love.graphics.rectangle('fill', 62, birdY, 30, 25)
--   love.graphics.setColor(.37, .82, .28)
--   love.graphics.rectangle('fill', playingAreaWidth, 0, 54, playingAreaHeight)
-- end

function love.draw()
    -- etc.

    local pipeWidth = 54
    local pipeSpaceY = 150
    local pipeSpaceHeight = 100

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
        playingAreaWidth,
        0,
        pipeWidth,
        pipeSpaceY
    )
    love.graphics.rectangle(
        'fill',
        playingAreaWidth,
        pipeSpaceY + pipeSpaceHeight,
        pipeWidth,
        playingAreaHeight - pipeSpaceY - pipeSpaceHeight
    )
end
