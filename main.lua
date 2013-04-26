-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- background
local background = display.newImage("glassbackground.jpg")


-- include Corona's "physics" library
local physics = require("physics")
physics.start()

-- set gravity
physics.setGravity(4, 4)

-- give walls body
local leftwall = display.newRect(0, 0, 1, display.contentHeight )
local rightwall = display.newRect(display.contentWidth, 0, 1, display.contentHeight )
local ceiling = display.newRect(0, 0, display.contentWidth, 1 )
local ground = display.newRect(0, 0, display.contentWidth, 0 )

-- turn walls in to physical bodies
physics.addBody(leftwall, "static", { bounce = 1} )
physics.addBody(rightwall, "static", { bounce = 1} )
physics.addBody(ceiling, "static", { bounce = 1} )
physics.addBody(ground, "static", { bounce = 1} )

-- balls
local redball = display.newImage("redball.png")
redball.x = 200
redball.y = 160
physics.addBody(redball, {bounce=1.5, radius = 40})

local blueball = display.newImage("blueball.png")
blueball.x = 300
blueball.y = 160
physics.addBody(blueball, {bounce=1.5, radius = 40})

local purpleball = display.newImage("purpleball.png")
purpleball.x = 400
purpleball.y = 160
physics.addBody(purpleball, {bounce=1.5, radius = 40})

local greenball = display.newImage("greenball.png")
greenball.x = 100
greenball.y = 160
physics.addBody(greenball)

