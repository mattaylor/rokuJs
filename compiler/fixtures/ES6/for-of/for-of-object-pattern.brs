_iteratorNormalCompletion = true
_didIteratorError = false
_iteratorError = undefined
If err = Eval("For _iterator = z.Symbol.iterator()
_step = /*null*/ To /*undefined*/ Step undefined
  _step$value = _step.value
  x = _step$value.x
  y = _step$value.y
  _step$value
End For") Then 
  _didIteratorError = true
  _iteratorError = err
End If