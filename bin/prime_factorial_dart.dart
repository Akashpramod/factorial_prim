import 'dart:io';

// Function to check if a number is prime
bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// Function to calculate the factorial of a number
BigInt factorial(int number) {
  if (number == 0 || number == 1) {
    return BigInt.one;
  }
  return BigInt.from(number) * factorial(number - 1);
}

void main() {
  // Input: Get a number from the user
  stdout.write("Enter a number: ");
  int userNumber = int.parse(stdin.readLineSync()!);

  // Check if the number is prime
  if (isPrime(userNumber)) {
    print("$userNumber is a prime number.");
  } else {
    print("$userNumber is not a prime number.");
  }

  // Calculate and print the factorial of the number
  BigInt result = factorial(userNumber);
  print("Factorial of $userNumber is: $result");
}
