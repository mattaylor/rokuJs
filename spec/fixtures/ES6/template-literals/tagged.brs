_templateObject = _taggedTemplateLiteral([
                                                      "42"
                                                    ], [
                                                      "42"
                                                    ])
                                                    Sub _taggedTemplateLiteral (strings, raw)
                                                      Return Object.freeze(Object.defineProperties(strings, {
                                                        raw : {
                                                          value : Object.freeze(raw)
                                                        }
                                                      }))
                                                    End Sub
                                                    
                                                    raw(_templateObject)