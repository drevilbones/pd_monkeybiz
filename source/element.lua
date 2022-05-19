local gfx <const> = playdate.graphics

class('Element', {
    hp=-1,
    x=200,
    y=120
}).extends(gfx.sprite)

function Element:init(imageFile, x, y, hp)
    Element.super.init(self)
    local image = gfx.image.new(imageFile)
    self:setImage(image)
    self:moveTo(x,y)
    self:add()
end
