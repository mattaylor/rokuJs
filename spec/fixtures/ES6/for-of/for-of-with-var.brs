_iteratorNormalCompletion = true
_didIteratorError = false
_iteratorError = undefined
If err = Eval("For _iterator = list.Symbol.iterator()
_step = /*null*/ To /*undefined*/ Step undefined
  x = _step.value
End For") Then 
  _didIteratorError = true
  _iteratorError = err
End If