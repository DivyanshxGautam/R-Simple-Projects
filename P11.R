#11
list_data<-list(c("Red","Green","Black"),matrix(c(1,3,5,7,9,11),nrow=2),
                list("Python","PHP","Java"))
print("list: ")
print(list_data)
names(list_data)<-c("Color","Odd Numbers","Language(s)")
print("list with column names: ")
print(list_data)
print("list element: ")
print(list_data[1])
print('2nd element: ')
print(list_data[2])