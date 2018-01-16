Sub _toArray (arr)
  Return IF Array.isArray(arr) THEN /*undefined*/ = arr ELSE /*undefined*/ = Array.from(arr))
End Sub

Function (_ref)
  _ref2 = _toArray(_ref)
  a = _ref2.0
  b = _ref2.slice(1)
  Return 0
End Function