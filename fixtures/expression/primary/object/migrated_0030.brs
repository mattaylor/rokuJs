Sub _defineProperty (obj, key, value)
                                                                                                                                                                          If key in obj Then 
                                                                                                                                                                            Object.defineProperty(obj, key, {
                                                                                                                                                                              value : value,
                                                                                                                                                                              enumerable : true,
                                                                                                                                                                              configurable : true,
                                                                                                                                                                              writable : true
                                                                                                                                                                            })
                                                                                                                                                                          Else
                                                                                                                                                                            obj.key = value
                                                                                                                                                                          End If
                                                                                                                                                                          Return obj
                                                                                                                                                                        End Sub
                                                                                                                                                                        
                                                                                                                                                                        x = _defineProperty({
                                                                                                                                                                          y : 1
                                                                                                                                                                        }, "y", 1)