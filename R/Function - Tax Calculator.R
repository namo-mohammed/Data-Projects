# Data Frame
df <- data.frame(
  Item = c("Laptop", "Smartphone", "Headphones", "Smartwatch", "Tablet"),
  Price = c(1000, 800, 200, 250, 500)
)

# Print the Data Frame
print("Data Frame:")
print(df)

# Function to Sum the Prices
sum_prices <- function(data) {
  total <- sum(data$Price)
  return(total)
}

# Function to Calculate Total Price with Tax
total_with_tax <- function(data, tax_rate) {
  total <- sum_prices(data)
  total_tax <- total * tax_rate
  total_with_tax <- total + total_tax
  return(total_with_tax)
}

# Function to Apply a 15% Discount
apply_discount <- function(total_price_with_tax, discount_rate = 0.15) {
  discount_amount <- total_price_with_tax * discount_rate
  total_after_discount <- total_price_with_tax - discount_amount
  return(total_after_discount)
}

# Prompt the User for a Tax Rate
user_input <- readline(prompt = "Enter the tax rate (as a decimal, e.g., 0.20 for 20%): ")

# Set the Tax Rate to the User's Input or Default to 0.15 if Input is Empty
if (user_input == "") {
  tax_rate <- 0.15
} else {
  tax_rate <- as.numeric(user_input)
}

# Call the Functions and Print the Results
total_price <- sum_prices(df)
cat("Total Price: £", total_price, "\n")

total_price_with_tax <- total_with_tax(df, tax_rate)
cat("Total Price with", tax_rate * 100, "% Tax: £", total_price_with_tax, "\n")

total_price_after_discount <- apply_discount(total_price_with_tax)
cat("Total Price after 15% Discount: £", total_price_after_discount, "\n")