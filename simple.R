print("Simple Vector x")
x<-c(1,2,3)
print(x)


print("Simple Vector y")
y=c(3,4,6)
print(y)

print("Matrix Declarations")
a=matrix(data=c(1,2,3,4,5,6), nrow=2, ncol=2)
a

#look at the matrix order
print("Another matrix: b")
b=matrix(data<-c(1,2,3,4,5,5))
b
print("Another matrix: c")
c=matrix(data=c(1,2,3,4,5,6),2,3)
c
print("Another matrix: d")
d=matrix(data=c(1,2,3,4,5,6),2,2, byrow=TRUE)
d
print("Another matrix: e")
e=matrix(data=c(1,2,3,4,5,6),2,2, byrow=FALSE)


#accessing particular element in an array
x[1]
y[1]

#accessing range of elements
y[1:3]

#finding mean of an element
print(x)
print("Mean of x")
mean(x)
print("variance of x")
var(x)
print("standard deviation of x")
sd(x)


#R has a internal datasets; Once such data set is nile
print("Reviewing the Nile database")
mean(Nile)
sd(Nile)
hist(Nile)
