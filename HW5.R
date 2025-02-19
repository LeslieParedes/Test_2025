## HW5

# 1.Assign to the variable n_dims a single random integer between 3 and 10.

n_dims <- runif(1, min = 3, max = 11)
print(n_dims)



##Create a vector of consecutive integers from 1 to n_dims2
vec_con<-1:(n_dims^2)
print(vec_con)
vec_samp<-sample(vec_con)
print(vec_samp)

m <- matrix(vec_samp, nrow = n_dims, ncol = n_dims)
print(m)
transposed_matrix<-t(m)
print(transposed_matrix)

sum_first_row <- sum(transposed_matrix[1, ])
mean_first_row <- mean(transposed_matrix[1, ])
print(sum_first_row)
print(mean_first_row)
sum_last_row <- sum(transposed_matrix[n_dims, ])
print(sum_last_row)
mean_last_row <- mean(transposed_matrix[n_dims, ])
print(mean_last_row)

eigen_results <- eigen(transposed_matrix)
print(eigen_results)
print(eigen_results$values)
print(eigen_results$vectors)
typeof(eigen_results$values)
typeof(eigen_results$vectors)

my_matrix <- matrix(runif(16), nrow = 4, ncol = 4)
print(my_matrix)
random_values <- runif(100)
my_logical <- random_values > 0.5
print(my_logical)
my_letters <- sample(letters)
print(my_letters)
my_list <- list(my_matrix[2, 2], my_logical[2], my_letters[2])
typeof(my_list)

list_element_types <- sapply(my_list, typeof)
print(list_element_types)
combined_vector <- c(my_list[[1]], my_list[[2]], my_list[[3]])
typeof(combined_vector)


# Create the vector of 26 random uniform values between 0 and 10
my_unis <- runif(26, min = 0, max = 10)

# Create a vector of 26 random letters
my_letters <- sample(letters)

# Create the data frame
my_data_frame <- data.frame(my_unis = my_unis, Letter = my_letters)

# Print the data frame
print(my_data_frame)
my_data_frame$my_unis[sample(1:26, 4)] <- NA
which(is.na(my_data_frame$my_unis))
my_data_frame <- my_data_frame[order(my_data_frame$Letter), ]
print(my_data_frame)
mean_my_unis <- mean(my_data_frame$my_unis, na.rm = TRUE)
print(mean_my_unis)
