import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

local screen <const> = playdate.graphics
local playerSprite = nil
local synth = playdate.sound.synth.new(playdate.sound.kWaveSquare)
synth:setADSR(0,0.1,0,0)

local function playBump()
	synth:playNote(600)
	synth:playNote(100)
end

local function loadGame()
	playdate.display.setRefreshRate(30)

	local playerImage = screen.image.new("images/smiley.png")
	assert(playerImage)

	playerSprite = screen.sprite.new(playerImage)
	playerSprite:moveTo(200,120)
	playerSprite:add()
end

local function updateGame()
	if playdate.buttonIsPressed(playdate.kButtonUp) then
		if playerSprite.y > 16 then
			playerSprite:moveBy(0, -2)
		else
			playBump()
		end
	end
	if playdate.buttonIsPressed(playdate.kButtonRight) then
		if playerSprite.x < 384 then
			playerSprite:moveBy(2, 0)
		else
			playBump()
		end
	end
	if playdate.buttonIsPressed(playdate.kButtonDown) then
		if playerSprite.y < 224 then
			playerSprite:moveBy(0, 2)
		else
			playBump()
		end
	end
	if playdate.buttonIsPressed(playdate.kButtonLeft) then
		if playerSprite.x > 16 then
			playerSprite:moveBy(-2, 0)
		else
			playBump()
		end
	end
	if playdate.buttonIsPressed(playdate.kButtonA) then
		--
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
