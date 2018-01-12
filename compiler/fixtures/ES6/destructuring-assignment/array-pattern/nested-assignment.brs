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
Sub _toArray (arr)
  Return IF Array.isArray(arr) THEN /*undefined*/ = arr ELSE /*undefined*/ = Array.from(arr))
End Sub

_ = 0
_ref = _slicedToArray(_, 3)
a = _ref.0
_ref$ = _ref.1
b = IF _ref$ === undefined THEN _ref$ = 0 ELSE _ref$ = _ref$)
_ref$2 = _ref.2
_ref$2 = IF _ref$2 === undefined THEN _ref$2 = {
  
} ELSE _ref$2 = _ref$2)
_ref$3 = _toArray(_ref$2)
c = _ref$3.0
a.0 = _ref$3.slice(1)
_