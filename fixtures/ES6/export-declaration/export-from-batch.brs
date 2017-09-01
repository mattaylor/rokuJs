Object.defineProperty(exports, "__esModule", {
  value : true
})
_foo = require("foo")
Object.keys(_foo).forEach(Function (key)
  If key === "default" OR key === "__esModule" Then 
    Return /*null*/
  End If
  Object.defineProperty(exports, key, {
    enumerable : true,
    get : Function ()
      Return _foo.key
    End Function
  })
End Function)