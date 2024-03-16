// Define an interface
abstract class Vehicle {
  void move();
}

// Define a base class Car that implements the Vehicle interface
class Car implements Vehicle {
  @override
  void move() {
    print('Car is moving forward.');
  }
}

// Define a subclass ElectricCar that overrides the move method
class ElectricCar extends Car {
  @override
  void move() {
    print('Electric car is moving silently.');
  }
}

// Define a method to read data from a file
void readDataFromFile() {
  print('Reading data from file...');
}

// Define a method to demonstrate the use of a loop
void demonstrateLoop() {
  for (int i = 0; i < 5; i++) {
    print('Loop iteration $i');
  }
}

void main() {
  // Create an instance of ElectricCar
  var electricCar = ElectricCar();
  electricCar.move(); // Output: Electric car is moving silently.

  // Call a method that reads data from a file
  readDataFromFile(); // Output: Reading data from file...

  // Call a method that demonstrates the use of a loop
  demonstrateLoop(); // Output: Loop iteration 0, 1, 2, 3, 4
}
