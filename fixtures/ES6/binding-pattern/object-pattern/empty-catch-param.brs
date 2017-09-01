Sub _objectDestructuringEmpty (obj)
  If obj == Null Then 
    PRINT /*{
 "type": "NewExpression",
 "callee": {
  "type": "Identifier",
  "name": "TypeError",
  "_fromTemplate": true
 },
 "arguments": [
  {
   "type": "StringLiteral",
   "extra": {
    "rawValue": "Cannot destructure undefined",
    "raw": "\"Cannot destructure undefined\""
   },
   "value": "Cannot destructure undefined",
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
    STOP
    
  End If
End Sub

If _ref = Eval("") Then 
  _objectDestructuringEmpty(_ref)
End If