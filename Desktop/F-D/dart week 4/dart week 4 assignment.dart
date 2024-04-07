import 'dart:io';
// Animal class (base class)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

// Dog class (inherits from Animal)
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Cat class (inherits from Animal)
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('Cat meows');
  }
}

// Playable interface
abstract class Playable {
  void play();
}

// Guitar class implementing Playable interface
class Guitar implements Playable {
  @override
  void play() {
    print('Playing the guitar');
  }
}

// Method to read data from file and initialize Animal instance
Animal readDataFromFile(String filePath) {
  // Assuming file format: "Dog,Spot,3" or "Cat,Whiskers,5"
  List<String> data = File(filePath).readAsStringSync().trim().split(',');
  String type = data[0];
  String name = data[1];
  int age = int.parse(data[2]);

  if (type == 'Dog') {
    return Dog(name, age);
  } else if (type == 'Cat') {
    return Cat(name, age);
  } else {
    throw Exception('Invalid animal type');
  }
}
// Method demonstrating the use of a loop
void demonstrateLoop() {
  for (int i = 1; i <= 3; i++) {
    print('Loop iteration $i');
  }
}


void main() {
  // Test inheritance and method overriding
  Animal dog = Dog('Buddy', 2);
  Animal cat = Cat('Whiskers', 4);

  dog.makeSound();  // Output: Dog barks
  cat.makeSound();  // Output: Cat meows

  // Test interface implementation
  Guitar guitar = Guitar();
  guitar.play();  // Output: Playing the guitar

  // Test initializing instance with data from file
  String filePath = 'animal_data.txt';
  Animal animal = readDataFromFile(filePath);
  print('Loaded animal: ${animal.name}, ${animal.age} years old');

  // Test loop
  demonstrateLoop();
}

