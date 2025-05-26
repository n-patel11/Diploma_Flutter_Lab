// W.A.P. to create class Animal that has a method called animalSound()
// Subclass of Animals is cat it has its own implementation of an animal
// sound. (B)

class Animal {
  void animalSound() {
    print('The animal makes a sound');
  }
}

class Cat extends Animal {
  @override
  void animalSound() {
    print('The cat says: Meow');
  }
}

void main() {
  Animal myAnimal = Animal();
  myAnimal.animalSound();

  Cat myCat = Cat();
  myCat.animalSound();
}
