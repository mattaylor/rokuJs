Object.defineProperty(exports, "__esModule", {
  value : true
})
_foo = require("foo")
Object.defineProperty(exports, "default", {
  enumerable : true,
  get : Function ()
    Return _interopRequireDefault(_foo).default
  End Function
})
Sub _interopRequireDefault (obj)
  Return IF obj AND obj.__esModule THEN obj = obj ELSE obj = {
    default : obj
  })
End Sub
