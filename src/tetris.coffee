# set main namespace
goog.provide("tetris")

# set requirements
goog.require("lime.Director")
goog.require("lime.Scene")
goog.require("lime.Sprite")
goog.require("lime.Circle")

tetris.start = ->
    director = new lime.Director(document.body, 800, 640)
    director.makeMobileWebAppCapable()

    scene1    = new lime.Scene()
    rectangle = new lime.Sprite().setSize(800, 640).setFill("#EE82EE")
        .setPosition(0, 0).setAnchorPoint(0, 0)
    circle    = new lime.Circle().setSize(40, 40).setFill("#000088")
        .setPosition(100, 100)

    scene1.appendChild(rectangle)
    scene1.appendChild(circle)

    director.replaceScene(scene1)