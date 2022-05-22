local gfx <const> = playdate.graphics

class('Element', {
    hp=nil,
    x=nil,
    y=nil
}).extends(gfx.sprite)

function Element:init(imageFile, x, y, hp)
    x = x or 200
    y = y or 120
    hp = hp or -1

    local image = gfx.image.new(imageFile)
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
