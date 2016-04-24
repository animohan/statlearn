#In R, Vectors must have elements of the same type

##Declaring a vector
x<-c(88,5,12,13)

##Inserting an element in the vector
x<-c(x[1:3], 168,x[4]) #inserts 168 between 3rd and 4th element

#note this can be generalized to inserting a vector at the ith position
y<-c(168,x[1:4]) #inserting 168 at the head of the vector
y<-c(x[1:4],168) #inserting 168 at the tail of the vector

#above example specify explicit length. Another example with any length vector
x<-c(88,5,12,13,22)
x<-c(x[1:length(x)],168)
x<-c(168, x[1:length(x)])
#at the ith position where i=3
x<-c(x[1:(3-1)],168,x[3:length(x)])

##Deleting an element
y<-c(2,4,6,8,1,3,5,7)
y<-c(y[2:length(y)]) #deleting first element
y<-c(y[1:length(y)-1]) #deleting the last element
#deleting the the ith element, i=3
y<-c(y[1:(3-1)],y[(3+1):length(y)]) #note the () are required for correct precedence
