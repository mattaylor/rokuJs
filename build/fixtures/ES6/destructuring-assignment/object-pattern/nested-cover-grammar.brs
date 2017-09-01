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
_ref = _slicedToArray(_, 1)
_ref$ = _slicedToArray(_ref.0, 1)
_ref$$ = _slicedToArray(_ref$.0, 1)
_ref$$$ = _slicedToArray(_ref$$.0, 1)
_ref$$$$ = _slicedToArray(_ref$$$.0, 1)
_ref$$$$$ = _slicedToArray(_ref$$$$.0, 1)
_ref$$$$$$ = _slicedToArray(_ref$$$$$.0, 1)
_ref$$$$$$$ = _slicedToArray(_ref$$$$$$.0, 1)
_ref$$$$$$$$ = _slicedToArray(_ref$$$$$$$.0, 1)
_ref$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$.0, 1)
_ref$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$$$$ = _slicedToArray(_ref$$$$$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$$$$2 = _slicedToArray(_ref$$$$$$$$$$$$$$$$$.0, 1)
_ref$$$$$$$$$$$$$$$$$3 = _slicedToArray(_ref$$$$$$$$$$$$$$$$$2.0, 1)
_ref$$$$$$$$$$$$$$$$$4 = _ref$$$$$$$$$$$$$$$$$3.0.a
a = IF _ref$$$$$$$$$$$$$$$$$4 === undefined THEN _ref$$$$$$$$$$$$$$$$$4 = b.0 ELSE _ref$$$$$$$$$$$$$$$$$4 = _ref$$$$$$$$$$$$$$$$$4)
_