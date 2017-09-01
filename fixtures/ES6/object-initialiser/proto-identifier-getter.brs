_proto__ = /*null*/
                                                    Sub _defineEnumerableProperties (obj, descs)
                                                      For Each key = /*null*/ In descs 
                                                        desc = descs.key
                                                        desc.configurable = desc.enumerable = true
                                                        If "value" in desc Then 
                                                          desc.writable = true
                                                        End If
                                                        Object.defineProperty(obj, key, desc)
                                                      End For
                                                      Return obj
                                                    End Sub
                                                    
                                                    _ref = {
                                                      __proto__ : Null
                                                    }
                                                    _proto__ = "__proto__"
                                                    _mutatorMap = {
                                                      
                                                    }
                                                    _mutatorMap._proto__ = _mutatorMap._proto__ OR {
                                                      
                                                    }
                                                    _mutatorMap._proto__.get = Function ()
                                                      
                                                    End Function
                                                    _defineEnumerableProperties(_ref, _mutatorMap)
                                                    _ref