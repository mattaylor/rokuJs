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
                                                    _get = Function (object, property, receiver)
                                                      If object === Null Then 
                                                        object = Function.prototype
                                                      End If
                                                      desc = Object.getOwnPropertyDescriptor(object, property)
                                                      If desc === undefined Then 
                                                        parent = Object.getPrototypeOf(object)
                                                        If parent === Null Then 
                                                          Return undefined
                                                        Else
                                                          Return get(parent, property, receiver)
                                                        End If
                                                      Else
                                                        If "value" in desc Then 
                                                          Return desc.value
                                                        Else
                                                          getter = desc.get
                                                          If getter === undefined Then 
                                                            Return undefined
                                                          End If
                                                          Return getter.call(receiver)
                                                        End If
                                                      End If
                                                    End Function
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
                                                    
                                                    Sub _possibleConstructorReturn (self, call)
                                                      If NOT self Then 
                                                        PRINT /*{
 "type": "NewExpression",
 "callee": {
  "type": "Identifier",
  "name": "ReferenceError",
  "_fromTemplate": true
 },
 "arguments": [
  {
   "type": "StringLiteral",
   "extra": {
    "rawValue": "this hasn't been initialised - super() hasn't been called",
    "raw": "\"this hasn't been initialised - super() hasn't been called\""
   },
   "value": "this hasn't been initialised - super() hasn't been called",
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
                                                        STOP
                                                        
                                                      End If
                                                      Return IF call AND typeofcall === "object" OR typeofcall === "function" THEN call = call ELSE call = self)
                                                    End Sub
                                                    
                                                    Sub _inherits (subClass, superClass)
                                                      If typeofsuperClass !== "function" AND superClass !== Null Then 
                                                        PRINT /*{
 "type": "NewExpression",
 "callee": {
  "type": "Identifier",
  "name": "TypeError",
  "_fromTemplate": true
 },
 "arguments": [
  {
   "type": "BinaryExpression",
   "left": {
    "type": "StringLiteral",
    "extra": {
     "rawValue": "Super expression must either be null or a function, not ",
     "raw": "\"Super expression must either be null or a function, not \""
    },
    "value": "Super expression must either be null or a function, not ",
    "_fromTemplate": true
   },
   "operator": "+",
   "right": {
    "type": "UnaryExpression",
    "operator": "typeof",
    "prefix": true,
    "argument": {
     "type": "Identifier",
     "name": "superClass",
     "_fromTemplate": true
    },
    "extra": {
     "parenthesizedArgument": false
    },
    "_fromTemplate": true
   },
   "_fromTemplate": true
  }
 ],
 "_fromTemplate": true
}*/
                                                        STOP
                                                        
                                                      End If
                                                      subClass.prototype = Object.create(superClass AND superClass.prototype, {
                                                        constructor : {
                                                          value : subClass,
                                                          enumerable : false,
                                                          writable : true,
                                                          configurable : true
                                                        }
                                                      })
                                                      If superClass Then 
                                                        IF Object.setPrototypeOf THEN /*undefined*/ = Object.setPrototypeOf(subClass, superClass) ELSE /*undefined*/ = subClass.__proto__ = superClass)
                                                      End If
                                                    End Sub
                                                    
                                                    A = Function (_B)
                                                      _inherits(A, _B)
                                                      Sub A ()
                                                        _classCallCheck(/*{
 "type": "ThisExpression"
}*/, A)
                                                        Return _possibleConstructorReturn(/*{
 "type": "ThisExpression"
}*/, A.__proto__ OR Object.getPrototypeOf(A).apply(/*{
 "type": "ThisExpression"
}*/, arguments))
                                                      End Sub
                                                      
                                                      _createClass(A, [
                                                        {
                                                          key : "foo",
                                                          value : Function ()
                                                            /*{
 "type": "NewExpression",
 "callee": {
  "type": "CallExpression",
  "callee": {
   "type": "Identifier",
   "name": "_get"
  },
  "arguments": [
   {
    "type": "LogicalExpression",
    "operator": "||",
    "left": {
     "type": "MemberExpression",
     "object": {
      "type": "MemberExpression",
      "object": {
       "type": "Identifier",
       "name": "A"
      },
      "property": {
       "type": "Identifier",
       "name": "prototype"
      },
      "computed": false
     },
     "property": {
      "type": "Identifier",
      "name": "__proto__"
     },
     "computed": false
    },
    "right": {
     "type": "CallExpression",
     "callee": {
      "type": "MemberExpression",
      "object": {
       "type": "Identifier",
       "name": "Object"
      },
      "property": {
       "type": "Identifier",
       "name": "getPrototypeOf"
      },
      "computed": false
     },
     "arguments": [
      {
       "type": "MemberExpression",
       "object": {
        "type": "Identifier",
        "name": "A"
       },
       "property": {
        "type": "Identifier",
        "name": "prototype"
       },
       "computed": false
      }
     ]
    }
   },
   {
    "type": "StringLiteral",
    "value": "bar"
   },
   {
    "type": "ThisExpression"
   }
  ],
  "trailingComments": [],
  "leadingComments": [],
  "innerComments": []
 },
 "arguments": []
}*/
                                                          End Function
                                                        }
                                                      ])
                                                      Return A
                                                    End Function(B)