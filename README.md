# Generating list of prime number within a given range(1..n)
 Some facts about prime numbers:
* The only even prime number is 2. All other even numbers can be divided by 2.
* If the sum of a number's digits is a multiple of 3, that number can be divided by 3.
* No prime number greater than 5 ends in a 5. Any number greater than 5 that ends in a 5 can be divided by 5.
* Zero and 1 are not considered prime numbers.
    
I have used the above facts to determine if a number is a prime or not. 
- The `_is_prime?/1` returns true if the number is prime otherwise false.
- The `generate_prime_number/1` returns the list of all prime numbers within a given range



