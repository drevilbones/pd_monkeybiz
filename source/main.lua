import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local screen <const> = playdate.graphics
local playerSprite = nil


local function loadGame()
	playdate.display.setRefreshRate(50)

	local playerImage = screen.image.new("images/smiley.png")
	assert(playerImage)

	playerSprite = screen.sprite.new(playerImage)
	playerSprite:moveTo(200,120)
	playerSprite:add()
end

local function updateGame()
	if playdate.buttonIsPressed(playdate.kButtonUp) then
		playerSprite:moveBy(0, -2)
	end
	if playdate.buttonIsPressed(playdate.kButtonRight) then
		playerSprite:moveBy(2, 0)
	end
	if playdate.buttonIsPressed(playdate.kButtonDown) then
		playerSprite:moveBy(0, 2)
	end
	if playdate.buttonIsPressed(playdate.kButtonLeft) then
		playerSprite:moveBy(-2, 0)
	end
end

local function drawGame()
	-- screen.clear()
	screen.sprite.update()
end

loadGame()

function playdate.update()
	updateGame()
	drawGame()
	playdate.drawFPS(0,0) -- FPS widget
end
