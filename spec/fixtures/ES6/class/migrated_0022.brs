Sub _classCallCheck (instance, Constructor)
  If NOT instance instanceof Constructor Then 
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
    "rawValue": "Cannot call a class as a function",
    "raw": "\"Cannot call a class as a function\""
   },
   "value": "Cannot call a class as a function",
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
    STOP
    
  End If
End Sub

Function ()
  Sub _class ()
    _classCallCheck(/*{
 "type": "ThisExpression"
}*/, _class)
  End Sub
  
  Return _class
End Function()