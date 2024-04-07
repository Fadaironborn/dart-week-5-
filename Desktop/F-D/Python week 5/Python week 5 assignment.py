# File Creation
try:
    # Open the file in write mode ('w')
    with open("my_file.txt", "w") as file:
        # Write at least three lines of text
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Another line with text and numbers: 3.14\n")

except FileNotFoundError:
    print("File not found or path is incorrect.")
except PermissionError:
    print("Permission denied. Check your file permissions.")
finally:
    print("File creation process completed.")
    
# File Reading and Display
try:
    # Open the file in read mode ('r')
    with open("my_file.txt", "r") as file:
        # Read and display the contents of the file
        file_contents = file.read()
        print("Contents of my_file.txt:")
        print(file_contents)

except FileNotFoundError:
    print("File not found or path is incorrect.")
except PermissionError:
    print("Permission denied. Check your file permissions.")
finally:
    print("File reading process completed.")

# File Appending
try:
    # Open the file in append mode ('a')
    with open("my_file.txt", "a") as file:
        # Append three additional lines of text
        file.write("Appending line 1\n")
        file.write("More numbers: 9876\n")
        file.write("Final line added\n")

except FileNotFoundError:
    print("File not found or path is incorrect.")
except PermissionError:
    print("Permission denied. Check your file permissions.")
finally:
    print("File appending process completed.")
