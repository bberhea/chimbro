#########
Brhanu
Berhea
Assignment 2
date:
#0  
  BrhanuBerheaAssignment2 <- list(
    firstName = "Brhanu",
    lastName = "Berhea",
    email = "bberhea@ucsc.edu",
    studentID = 1505069
    
  )

#1
diamonds <- get(
  load(
    file = url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/diamonds.RData")
  )
)


BrhanuBerheaAssignment2$s1a <- nrow(diamonds)
BrhanuBerheaAssignment2$s1b <- ncol(diamonds)
BrhanuBerheaAssignment2$s1c <- names(diamonds)
BrhanuBerheaAssignment2$sld <- summary(diamonds$price)

nrow(diamonds)
ncol(diamonds)
names(diamonds)
summary(diamonds$price)

#2
nhis <- read.table(
  file = 
    "https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",
     header = TRUE)

BrhanuBerheaAssignment2$s2a <- print(4785)
BrhanuBerheaAssignment2$s2a <- nrow(nhis)
BrhanuBerheaAssignment2$s2b <- ncol(nhis)
BrhanuBerheaAssignment2$s2c <- names(nhis)
BrhanuBerheaAssignment2$s2d <- mean(nhis$weight, na.rm = FALSE)
BrhanuBerheaAssignment2$s2d <- median(nhis$weight, na.rm = FALSE)


nhis$weight2 <- ifelse(nhis$weight < 996 | nhis$weight > 999,
                        yes = nhis$weight,
                        no = NA)

BrhanuBerheaAssignment2$s2f <- mean(nhis$weight2, na.rm = TRUE)
BrhanuBerheaAssignment2$s2g <- median(nhis$weight2, na.rm = TRUE)
nhis_male <- subset(nhis,SEX == 1)
nhis_female <- subset(nhis,SEX ==2)

BrhanuBerheaAssignment2$s2h <- summary(nhis_male$weight2)
BrhanuBerheaAssignment2$s2i <- summary(nhis_female$weight2)


#3

vec <-c(letters,LETTERS)
BrhanuBerheaAssignment2$s3a <- vec[seq(2, length(vec),2)]
BrhanuBerheaAssignment2$s3b <-paste(vec[c(2,18,8,1,14,21)],collapse = "")

arr <- array(c(letters,LETTERS), dim = c(3,3,3))

BrhanuBerheaAssignment2$s3c <- paste(arr[1,1,2],arr[2,1,2],arr[3,1,2], sep = "")
BrhanuBerheaAssignment2$s3d <- paste(arr[2,2,1],arr[2,2,2],arr[2,2,3], sep = "")
BrhanuBerheaAssignment2$s3e <- paste(arr[2,1,1],arr[3,3,2],arr[2,3,1],arr[1,1,1],arr[2,2,2],arr[3,1,3],sep = "")
#end




#there are 7 observations
#there are 4 columns