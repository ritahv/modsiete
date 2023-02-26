#s3

student<- function(n,a,g){
  if(g>4 || g<0) stop("GPA must be between 0&4")
  value<-list(name=n,age=a, GPA=g)
  attr(value, "class") <- "student"
  value
}
s<- student("Rei", 21, 3.7)


isS4(s)

#UseMethod() ???????



#For S4 objects are created using the new() function. 
setClass("student", slots=list(name="character", age="numeric", GPA="numeric"))
s4 <- new("student",name="Myself", age=29, GPA=3.5)
s4
s5 <- new("student",name="Rei", age=20, GPA=3.7)
isS4(s4)

setGeneric("union")
setMethod("union",
          c(x = "data.fram", y = "date.frame"),
          function(x, y) {
            unique(rbind(x, y))
          }
)

dataframe1 <- data.frame (
  Name = c("Lily", "Rei", "Samantha"),
  Age = c(22, 20, 19),
  GPA = c(3.7, 3.3, 2.8)
)
dataframe2 <- data.frame (
  Name = c("Ryan", "Justice", "Timothy"),
  Age = c(22, 20, 19),
  GPA = c(3.7, 3.3, 2.8)
)
union(dataframe1,dataframe2)
isS4(union)

#I didn't know how to make something using setMethod that I could use on the s4 data, but union is S4 and it worked on my 2 dataframes