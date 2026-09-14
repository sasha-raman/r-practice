vector1 <-c(1:10)
vector2 <-c(letters)

list1<- list(1:10, letters, 
             list("biryani","mac & cheese",
                  "Link Click", "TGCF", "Saiki K", 
                  "Read", "Play Games", "Talk with Friends", "Listen to Music"))
cbind(vector1,vector2)

matrixAN<- matrix (c(1:10), list(letters), nrow=2, ncol=10, byrow=TRUE)