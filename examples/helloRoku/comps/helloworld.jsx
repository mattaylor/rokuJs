
// @jsx createElement
// import { createElement } from 'nervjs'

export default 
<component name="HelloWorld" extends="Scene"> 
	<children>
    <Label id="myLabel" 
      text="Hello World!"
      width="1280" 
      height="720" 
      horizAlign="center"
      vertAlign="center"
    />
  </children>
  { m.top.setFocus(true)
    m.myLabel = m.top.findNode("myLabel")
 
    'Set the font size
    m.myLabel.font.size=92

    'Set the color to light blue
    m.myLabel.color="0x72D7EEFF"
  }
</component>
