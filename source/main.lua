import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"
import "CoreLibs/animation"

import "enemy"
import "player"
import "level"
import "camera"

local gfx <const> 	= playdate.graphics
local thePlayer 	= nil
local tiles 		= nil
local map			= nil

local function loadGame()
	playdate.display.setRefreshRate(30)

	thePlayer = Player(100, 100)

	tiles = gfx.imagetable.new("images/bw_tiles")
	map = gfx.tilemap.new()
	map:setImageTable(tiles)
	map:setTiles(level.layers[1].data, level.width)

	print("loadgame: ", thePlayer.x, thePlayer.y)
end

local function drawGame()
	gfx.sprite.update()
	moveCamera(thePlayer)
	map:draw(0,0)
end

function playdate.update()
	drawGame()
	playdate.drawFPS(0,0)
end

loadGame()