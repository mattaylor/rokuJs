Sub _toArray (arr)
  Return IF Array.isArray(arr) THEN /*undefined*/ = arr ELSE /*undefined*/ = Array.from(arr))
End Sub

_ = 0
_ref = _toArray(_)
a.0 = _ref.slice(0)
_