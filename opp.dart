//interface for animals
abstract class Animal {
  void makeSound(); // An abstract method to make a sound
}

//Base class for Animals
class BaseAnimal implements Animal {
  @override
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Dog class inheriting from BaseAnimal
class Dog extends BaseAnimal {
  @override
  void makeSound() {
    print('Dog barks'); // Override the makeSound method for a dog
  }
}

// Cat class inheriting from BaseAnimal
class Cat extends BaseAnimal {
  @override
  void makeSound() {
    print('Cat meows'); // Override the makeSound method for a cat
  }
}

// class to read data from a file and initialize instances of Animal
class AnimalReader {
  List<Animal> readAnimalsFromFile(String filename) {
    List<Animal> animals = [];

    // In a real scenario you would read from a file here for simple
    animals.add(Dog()); //add a dog
    animals.add(Cat()); // add a cat

    return animals;
  }
}

void main() {
  var animalReader = AnimalReader();
  var animals = animalReader.readAnimalsFromFile('animals.txt');

  for (var animal in animals) {
    animal.makeSound(); // Make sound of each animal
  }
}
