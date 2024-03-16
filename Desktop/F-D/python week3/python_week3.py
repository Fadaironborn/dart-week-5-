import sys

def calculate_discount(price, discount_percent):
    if discount_percent >= 20:
        discounted_price = price - (price * discount_percent / 100)
        return discounted_price
    else:
        return price

if __name__ == "__main__":
    if len(sys.argv) > 1:
        # If command-line arguments are provided, use them
        original_price = float(sys.argv[1])
        discount_percentage = float(sys.argv[2])
    else:
        # Otherwise, prompt the user for input
        original_price = float(input("Enter the original price of the item: "))
        discount_percentage = float(input("Enter the discount percentage: "))

    # Calculate the final price after applying the discount
    final_price = calculate_discount(original_price, discount_percentage)

    # Print the final price after applying the discount, or the original price if no discount was applied
    if final_price != original_price:
        print("Final price after applying the discount: $", format(final_price, '.2f'))
    else:
        print("No discount applied. Original price: $", format(original_price, '.2f'))
