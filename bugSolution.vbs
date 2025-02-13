Function f(a, b)
  If IsNumeric(a) = False Then
    a = 0
  End If
  If IsNumeric(b) = False Then
    b = 0
  End If
  c = a + b
  f = c
End Function

MsgBox f(1, Empty) 
MsgBox f(0, 1)
MsgBox f(Empty, Empty)