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
_ = 0
a = _.a
_$b = _.b
b = IF _$b === undefined THEN _$b = 0 ELSE _$b = _$b)
d = _.c
_$e = _.e
f = IF _$e === undefined THEN _$e = 0 ELSE _$e = _$e)
_$g = _slicedToArray(_.g, 1)
h = _$g.0