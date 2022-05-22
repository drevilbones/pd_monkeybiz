class('Character').extends(Element)

function Character:init()
    Character.super.init(self, imageFile, x, y, hp)

end

function Character:update()
    Character.super.update(self)

end
