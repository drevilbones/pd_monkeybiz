import "CoreLibs/graphics"

import "player"

local gfx <const> = playdate.graphics
local abs, floor, ceil, min, max = math.abs, math.floor, math.ceil, math.min, math.max

-- 400 x 240
local displayWidth, displayHeight <const> = playdate.display.getSize()
local halfDisplayWidth <const> = displayWidth / 2
local halfDisplayHeight <const> = displayHeight /2

local cameraX = 0
local cameraY = 0

--TODO: fix the camera position calculation (min/max)
function moveCamera(focus)
    local newX = focus.x - halfDisplayWidth + 60
	
	if newX ~= -cameraX then
		cameraX = -newX
		gfx.setDrawOffset(cameraX,cameraY)
    end

    local newY = focus.y - halfDisplayHeight + 10

    if newY ~= -cameraY then
        cameraY = -newY
        gfx.setDrawOffset(cameraX,cameraY)
    end

end