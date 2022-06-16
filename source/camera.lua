import "CoreLibs/graphics"

import "player"

local gfx <const> = playdate.graphics

function moveCamera(focus)
    gfx.setDrawOffset()
    --print(gfx.getDrawOffset())
end