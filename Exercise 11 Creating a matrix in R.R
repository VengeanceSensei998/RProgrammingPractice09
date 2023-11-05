#Exercise 11 Creating a matrix in R 

#Method 1 

chess = matrix(c("dark","queen","dark","queen","dark","pawn",
  "dark","pawn","dark","knight","light","bishop",
  "light","king","light","rook","light","pawn",
  "light","pawn"),nrow = 10,byrow = TRUE)

colnames(chess) <- c("Player", "Piece")

chess

#Method 2 

chess = matrix(c("dark","dark","dark","dark","dark",
                 "light","light","light","light","light"),nrow=10,byrow = TRUE)
chess


secondcol= c("king","queen","pawn","pawn","knight","bishop","king","rook","pawn","pawn")
chess = cbind(chess,secondcol)
colnames(chess) <- c("Player", "Piece")
chess

#Method 3
data_vector <- c("dark", "queen", "dark", "queen", "dark", "pawn",
                 "dark", "pawn", "dark", "knight", "light", "bishop",
                 "light", "king", "light", "rook", "light", "pawn",
                 "light", "pawn")

# Use the `dim()` function to specify the dimensions
chess <- array(data_vector, dim = c(10, 2))

# Set column names
colnames(chess) <- c("Player", "Piece")

chess

