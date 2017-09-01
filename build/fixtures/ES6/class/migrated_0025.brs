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

Function (_)
  _inherits(A, _)
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
  
  Return A
End Function(0)