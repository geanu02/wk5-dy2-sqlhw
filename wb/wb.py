# #Write a function called getSumOfDigits that takes a positive integer as an argument and calculates the sum of its digits. You can assume that the argument is always a positive integer.

# Examples


# getSumOfDigits(123)  # Should return 6 (1 + 2 + 3 = 6)
# getSumOfDigits(223)  # Should return 7 (2 + 2 + 3 = 7)
# getSumOfDigits(1337) # Should return 14 (1 + 3 + 3 + 7 = 14)

def getSumOfDigits(num):
    n_str = str(num)
    n_sum = 0
    for i in range(len(n_str)):
        n_sum += int(n_str[i])
    return n_sum

print(getSumOfDigits(1337))