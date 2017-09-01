_i = /*null*/
                                                                                                                                                                        _x = /*null*/
                                                                                                                                                                        _mutatorMap = /*null*/
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
                                                                                                                                                                        
                                                                                                                                                                        x = _x = {
                                                                                                                                                                          Function()
                                                                                                                                                                            
                                                                                                                                                                          End Function
                                                                                                                                                                        }, _i = "i", _mutatorMap = {
                                                                                                                                                                          
                                                                                                                                                                        }, _mutatorMap._i = _mutatorMap._i OR {
                                                                                                                                                                          
                                                                                                                                                                        }, _mutatorMap._i.get = Function ()
                                                                                                                                                                          
                                                                                                                                                                        End Function, _defineEnumerableProperties(_x, _mutatorMap), _x