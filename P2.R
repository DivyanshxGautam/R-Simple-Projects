#Q2. Write an R program to create a Data frame which contains details of 5 employees and display the details.
Employees = data.frame(
  Name=c("Dhruv","Manya","Lakshya","Ankita","Shivam"),
  Gender = c("M","F","M","F","M"),
  Age = c(20,20,19,19,18),
  SSN = c("1234-34-2345","123-44-779","556-24-443","128-56-987","445-67-874")
  )
print("Details of the employees:")
print(Employees)
