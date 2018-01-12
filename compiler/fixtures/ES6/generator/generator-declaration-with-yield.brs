_marked = regeneratorRuntime.mark(foo)
          Sub foo ()
        Return regeneratorRuntime.wrap(Function (_context)
          While 1
            if _context.prev = _context.next = 0 Then 
              _context.next = 2
              Return 3,if _context.prev = _context.next = 2 Then 
                ,if _context.prev = _context.next = "end" Then 
                  Return _context.stop()
                End If
              End While
            End Function, _marked, /*{
 "type": "ThisExpression"
}*/)
          End Sub
          