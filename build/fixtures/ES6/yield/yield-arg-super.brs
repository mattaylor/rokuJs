_createClass = Function ()
                                                                                                                  Sub defineProperties (target, props)
                                                                                                                    For i = 0 To props.length Step 1
                                                                                                                      descriptor = props.i
                                                                                                                      descriptor.enumerable = descriptor.enumerable OR false
                                                                                                                      descriptor.configurable = true
                                                                                                                      If "value" in descriptor Then 
                                                                                                                        descriptor.writable = true
                                                                                                                      End If
                                                                                                                      Object.defineProperty(target, descriptor.key, descriptor)
                                                                                                                    End For
                                                                                                                  End Sub
                                                                                                                  
                                                                                                                  Return Function (Constructor, protoProps, staticProps)
                                                                                                                    If protoProps Then 
                                                                                                                      defineProperties(Constructor.prototype, protoProps)
                                                                                                                    End If
                                                                                                                    If staticProps Then 
                                                                                                                      defineProperties(Constructor, staticProps)
                                                                                                                    End If
                                                                                                                    Return Constructor
                                                                                                                  End Function
                                                                                                                End Function()
                                                                                                                    _get = Function (object, property, receiver)
                                                                                                                  If object === Null Then 
                                                                                                                    object = Function.prototype
                                                                                                                  End If
                                                                                                                  desc = Object.getOwnPropertyDescriptor(object, property)
                                                                                                                  If desc === undefined Then 
                                                                                                                    parent = Object.getPrototypeOf(object)
                                                                                                                    If parent === Null Then 
                                                                                                                      Return undefined
                                                                                                                    Else
                                                                                                                      Return get(parent, property, receiver)
                                                                                                                    End If
                                                                                                                  Else
                                                                                                                    If "value" in desc Then 
                                                                                                                      Return desc.value
                                                                                                                    Else
                                                                                                                      getter = desc.get
                                                                                                                      If getter === undefined Then 
                                                                                                                        Return undefined
                                                                                                                      End If
                                                                                                                      Return getter.call(receiver)
                                                                                                                    End If
                                                                                                                  End If
                                                                                                                End Function
                                                                                                                    Sub _classCallCheck (instance, Constructor)
                                                                                                                  If NOT instance instanceof Constructor Then 
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
    "rawValue": "Cannot call a class as a function",
    "raw": "\"Cannot call a class as a function\""
   },
   "value": "Cannot call a class as a function",
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
                                                                                                                    STOP
                                                                                                                    
                                                                                                                  End If
                                                                                                                End Sub
                                                                                                                
                                                                                                                    A = Function ()
                                                                                                                  Sub A ()
                                                                                                                    _classCallCheck(/*{
 "type": "ThisExpression"
}*/, A)
                                                                                                                  End Sub
                                                                                                                  
                                                                                                                      _createClass(A, [
                                                                                                                    {
                                                                                                                      key : "b",
                                                                                                                          value : regeneratorRuntime.mark(Function ()
                                                                                                                        Return regeneratorRuntime.wrap(Function (_context)
                                                                                                                          While 1
                                                                                                                            if _context.prev = _context.next = 0 Then 
                                                                                                                              _context.next = 2
                                                                                                                              Return _get(A.prototype.__proto__ OR Object.getPrototypeOf(A.prototype), "c", /*{
 "type": "ThisExpression"
}*/).call(/*{
 "type": "ThisExpression"
}*/),if _context.prev = _context.next = 2 Then 
                                                                                                                                ,if _context.prev = _context.next = "end" Then 
                                                                                                                                  Return _context.stop()
                                                                                                                                End If
                                                                                                                              End While
                                                                                                                            End Function, b, /*{
 "type": "ThisExpression"
}*/)
                                                                                                                          End Function)
                                                                                                                        }
                                                                                                                      ])
                                                                                                                      Return A
                                                                                                                    End Function()