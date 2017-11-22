'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK Licence Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

function Main()
    print("in showChannelSGScreen")
    'Indicate this is a Roku SceneGraph application'
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    'Create a scene and load /components/helloworld.xml'
    scene = screen.CreateScene("HelloWorld")
    screen.show()
    while(true) {
        msg = wait(0, m.port)
        if (type(msg) == "roSGScreenEvent" && msg.isScreenClosed() return
    }
end function
