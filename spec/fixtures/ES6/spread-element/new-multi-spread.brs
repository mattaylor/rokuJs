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
                                                    
                                                    /*{
 "type": "NewExpression",
 "callee": {
  "type": "CallExpression",
  "callee": {
   "type": "MemberExpression",
   "object": {
    "type": "MemberExpression",
    "object": {
     "type": "MemberExpression",
     "object": {
      "type": "Identifier",
      "name": "Function"
     },
     "property": {
      "type": "Identifier",
      "name": "prototype"
     },
     "computed": false
    },
    "property": {
     "type": "Identifier",
     "name": "bind"
    },
    "computed": false
   },
   "property": {
    "type": "Identifier",
    "name": "apply"
   },
   "computed": false
  },
  "arguments": [
   {
    "type": "Identifier",
    "name": "f"
   },
   {
    "type": "CallExpression",
    "callee": {
     "type": "MemberExpression",
     "object": {
      "type": "ArrayExpression",
      "elements": [
       {
        "type": "NullLiteral"
       }
      ]
     },
     "property": {
      "type": "Identifier",
      "name": "concat"
     },
     "computed": false
    },
    "arguments": [
     {
      "type": "CallExpression",
      "callee": {
       "type": "Identifier",
       "name": "_toConsumableArray"
      },
      "arguments": [
       {
        "type": "Identifier",
        "name": "x"
       }
      ]
     },
     {
      "type": "CallExpression",
      "callee": {
       "type": "Identifier",
       "name": "_toConsumableArray"
      },
      "arguments": [
       {
        "type": "Identifier",
        "name": "y"
       }
      ]
     },
     {
      "type": "CallExpression",
      "callee": {
       "type": "Identifier",
       "name": "_toConsumableArray"
      },
      "arguments": [
       {
        "type": "Identifier",
        "name": "z"
       }
      ]
     }
    ]
   }
  ]
 },
 "arguments": [],
 "trailingComments": [],
 "leadingComments": [],
 "innerComments": []
}*/