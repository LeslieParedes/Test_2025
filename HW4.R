#Atomic vectors
#recycling operations
#coercion mixted vectors
#vectorization applying functions
#runif, rep ,seq
#markdown with commentary

#1
x <-1.1
a <- 2.2
b <- 3.3
z <-x^(a^b) #a
print(z)
z<- (x^a)^b
print(z) #b
z<-(3*x^3)+(2*x^2)+1
print(z)

#2
my_vectorA <- c(seq(1, 8, by = 1), seq(7, 1, by = -1))
print(my_vectorA)
my_vectorB<- rep(1:5, 1:5)
print(my_vectorB)
my_vectorC<- rep(5:1, 5:1)
print(my_vectorC)

#3
set.seed(1)
coor <- runif(2)
print(coor)
x <- coor[1]
print(x)
y <- coor[2]
print(y)
radius <- sqrt(x^2 + y^2)
print(radius)
theta <- atan(y / x)
print(theta)
cat("Random uniform numbers (x, y):", x, ",", y, "\n")
cat("Polar coordinates (radius, theta):", radius, ",", theta, "\n")

#4

queue <- c("sheep", "fox", "owl", "ant")
print(queue)
queue<-c(queue,"serpent") #the serpent arrives and gets in line
print(queue)
queue <- queue[-which(queue == "sheep")]
print(queue)
queue<-c("donkey", queue)
print(queue)
queue <- queue[-which(queue == "serpent")]
print(queue)
queue <- queue[-which(queue == "owl")]
print(queue)
which(queue == "ant")
queue <- c(queue[1:(3-1)], "aphid", queue[3:length(queue)])
print(queue)
which(queue == "aphid")

#5
X <-1:100
Xfiltered <- X[!(X %% 2 == 0 | X %% 3 == 0 | X %% 7 == 0)]
print(Xfiltered)
