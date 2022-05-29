import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/animation"

import "enemy"
import "player"

local screen <const> = playdate.graphics
local thePlayer = nil

local function loadGame()
	playdate.display.setRefreshRate(30)

	thePlayer = Player(200,200)
end

local function updateGame()

end

local function drawGame()
	screen.sprite.update()
end

loadGame()

function playdate.update()
	-- updateGame()
	drawGame()
	playdate.drawFPS(0,0)
end
