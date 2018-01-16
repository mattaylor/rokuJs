
// @jsx createElement
import { createElement } from 'nervjs'
import { Component, Chldren } from '../../../sceneGraph/primary'
import { Label } from '../../../sceneGraph/renderable'
import { m } from '../../sceneGraph/globals'

export default (props) => 
<Component name="HelloWorld" extends="Scene"> 
	<Children>
    <Label id="myLabel" 
      text="Hello World!"
      width="1280" 
      height="720" 
      horizAlign="center"
      vertAlign="center"
    />
  </Children>
  { m.top.setFocus(true)
    m.myLabel = m.top.findNode("myLabel")
 
    'Set the font size
    m.myLabel.font.size=92

    'Set the color to light blue
    m.myLabel.color="0x72D7EEFF"
  }
</Component>
