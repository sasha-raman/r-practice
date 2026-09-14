#vectors
vector_example <- c(0,1,2,3,4)


vector_example2 <- c(1,"B",3)
class(vector_example2)
typeof(vector_example2)

twenty <- c(1:20)
alphabet <- c(letters)

class(twenty)
typeof(twenty)

class(alphabet)
typeof(alphabet)

twenty[5]
twenty[7]
twenty[25]

alphabet[6]
alphabet[23]
alphabet[33]
#lists
L1 <- list(1,2, "Hello", "cat", 12, list (1,2,3))
L1 [[6]] [1]
#matrices
matrix1 <- matrix(c(1:12),nrow =3, ncol = 3, byrow=FALSE)
matrix2 <- matrix(c(1:12),nrow=3, ncol=3, byrow=TRUE)

rownames(matrix1) <- c("one", "two", "three")
colnames(matrix1) <- c("one", "two", "three")

matrix1 [1,2]
matrix1 ["one"]
matrix1[,"one"]
matrix1["one","one"]

#dataframes
list_for_df <- list(list(1:3), list(4:6), list(7:9))
example_df <- as.data.frame(list_for_df)
