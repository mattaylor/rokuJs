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
                                                    
                                                    /*{
 "type": "NewExpression",
 "callee": {
  "type": "CallExpression",
  "callee": {
   "type": "Identifier",
   "name": "raw"
  },
  "arguments": [
   {
    "type": "Identifier",
    "name": "_templateObject"
   }
  ],
  "trailingComments": [],
  "leadingComments": [],
  "innerComments": []
 },
 "arguments": []
}*/