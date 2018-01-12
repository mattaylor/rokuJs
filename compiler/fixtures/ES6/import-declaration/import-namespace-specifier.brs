_foo = require("foo")
                                                    foo = _interopRequireWildcard(_foo)
                                                    Sub _interopRequireWildcard (obj)
                                                      If obj AND obj.__esModule Then 
                                                        Return obj
                                                      Else
                                                        newObj = {
                                                          
                                                        }
                                                        If obj != Null Then 
                                                          For Each key = /*null*/ In obj 
                                                            If Object.prototype.hasOwnProperty.call(obj, key) Then 
                                                              newObj.key = obj.key
                                                            End If
                                                          End For
                                                        End If
                                                        newObj.default = obj
                                                        Return newObj
                                                      End If
                                                    End Sub
                                                    