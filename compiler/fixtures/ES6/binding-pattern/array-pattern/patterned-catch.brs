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
If _ref = Eval("") Then 
  _ref2 = _slicedToArray(_ref, 3)
  a = _ref2.0
  b = _ref2.1
  _ref2$ = _ref2.2
  c = _ref2$.c
  _ref2$$d = _ref2$.d
  e = IF _ref2$$d === undefined THEN _ref2$$d = 0 ELSE _ref2$$d = _ref2$$d)
  _ref2$$f = _ref2$.f
  g = IF _ref2$$f === undefined THEN _ref2$$f = 0 ELSE _ref2$$f = _ref2$$f)
  _ref2$$h = _ref2$.h
  h = IF _ref2$$h === undefined THEN _ref2$$h = i ELSE _ref2$$h = _ref2$$h)
End If