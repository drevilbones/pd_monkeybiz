local gfx <const> = playdate.graphics

class('Element').extends(gfx.sprite)

function Element:init(imageFile, x, y, hp)
    self.hp = hp or -1

    local image = gfx.image.new(imageFile)
    assert(image)
    self:setImage(image)

    self:moveTo(x,y)
    self:add()
end

function Element:update()
    Element.super.update(self)

    if hp == 0 then
        self:remove()
    end
end
