function love.load()
	x = 100
	y = 50
	vel = 500
	reverseX = false
	reverseY = false
end

function love.update(dt)
	if love.keyboard.isDown("up")  or
		love.keyboard.isDown("w") then
		y = y - vel * dt
	elseif love.keyboard.isDown("down")  or
		love.keyboard.isDown("s") then
		y = y + vel * dt
	end

	if love.keyboard.isDown("right")  or
		love.keyboard.isDown("d") then
		x = x + vel * dt
	elseif love.keyboard.isDown("left")  or
		love.keyboard.isDown("a") then
		x = x - vel * dt
	end

end

function love.draw()
    love.graphics.circle("fill", x, y, 20)
end