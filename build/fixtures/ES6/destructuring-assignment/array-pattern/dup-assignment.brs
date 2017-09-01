Sub _toArray (arr)
  Return IF Array.isArray(arr) THEN /*undefined*/ = arr ELSE /*undefined*/ = Array.from(arr))
End Sub

_ = 0
_ref = _toArray(_)
a = _ref.0
a = _ref.1
a = _ref.slice(3)
_