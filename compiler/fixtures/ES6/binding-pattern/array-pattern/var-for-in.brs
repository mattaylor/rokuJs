_slicedToArray = Function ()
  Sub sliceIterator (arr, i)
    _arr = [
      
    ]
    _n = true
    _d = false
    _e = undefined
    If err = Eval("For _i = arr.Symbol.iterator()
    _s = /*null*/ To /*undefined*/ Step undefined
      _arr.push(_s.value)
      If i AND _arr.length === i Then 
        
      End If
    End For") Then 
      _d = true
      _e = err
    End If
    Return _arr
  End Sub
  
  Return Function (arr, i)
    If Array.isArray(arr) Then 
      Return arr
    Else
      If Symbol.iterator in Object(arr) Then 
        Return sliceIterator(arr, i)
      Else
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
    "rawValue": "Invalid attempt to destructure non-iterable instance",
    "raw": "\"Invalid attempt to destructure non-iterable instance\""
   },
   "value": "Invalid attempt to destructure non-iterable instance",
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
        STOP
        
      End If
    End If
  End Function
End Function()
For Each _ref = /*null*/ In z 
  _ref2 = _slicedToArray(_ref, 2)
  x = _ref2.0
  y = _ref2.1
End For