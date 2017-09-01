_templateObject = _taggedTemplateLiteral([
                                                      "token ",
                                                      ""
                                                    ], [
                                                      "token ",
                                                      ""
                                                    ])
                                                    Sub _taggedTemplateLiteral (strings, raw)
                                                      Return Object.freeze(Object.defineProperties(strings, {
                                                        raw : {
                                                          value : Object.freeze(raw)
                                                        }
                                                      }))
                                                    End Sub
                                                    
                                                    raw(_templateObject, "nested " + "deeply" + {
                                                      
                                                    } + " blah")