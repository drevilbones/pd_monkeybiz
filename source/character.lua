import "element"

class('Character').extends(Element)

function Character:init(imageFile, x, y, hp)
    Character.super.init(self, imageFile, x, y, hp)

end

function Character:update()
    Character.super.update(self)

end
