Sub _toArray (arr)
  Return IF Array.isArray(arr) THEN /*undefined*/ = arr ELSE /*undefined*/ = Array.from(arr))
End Sub

If _ref = Eval("") Then 
  _ref2 = _toArray(_ref)
End If