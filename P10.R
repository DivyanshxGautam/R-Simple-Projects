#10. Create an array passing in a vector of values and a vector of dimensions also provide names for each dimensions
a = array(
  6:30,
  dim = c(4,3,2),
  dimnames = list(
    c("Row1","Row2","Row3","Row4"),
    c("Col1","Col2","Col3"),
    c("Part1","Part2")
  )
)
print (a)