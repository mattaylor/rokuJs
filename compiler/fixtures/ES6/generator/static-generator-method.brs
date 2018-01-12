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
                                                  
                                                    Foo = Function ()
                                                    Sub Foo ()
                                                      _classCallCheck(/*{
 "type": "ThisExpression"
}*/, Foo)
                                                    End Sub
                                                    
                                                      _createClass(Foo, Null, [
                                                      {
                                                        key : "foo",
                                                          value : regeneratorRuntime.mark(Function ()
                                                          Return regeneratorRuntime.wrap(Function (_context)
                                                            While 1
                                                              if _context.prev = _context.next = 0 Then 
                                                                ,if _context.prev = _context.next = "end" Then 
                                                                  Return _context.stop()
                                                                End If
                                                              End While
                                                            End Function, foo, /*{
 "type": "ThisExpression"
}*/)
                                                          End Function)
                                                        }
                                                      ])
                                                      Return Foo
                                                    End Function()