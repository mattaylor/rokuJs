Sub _toConsumableArray (arr)
                                                      If Array.isArray(arr) Then 
                                                        For i = 0
                                                        arr2 = Array(arr.length) To arr.length Step 1
                                                          arr2.i = arr.i
                                                        End For
                                                        Return arr2
                                                      Else
                                                        Return Array.from(arr)
                                                      End If
                                                    End Sub
                                                    
                                                    f.apply(undefined, _toConsumableArray(g))