// Type casting

class Animal{}
class Cat:Animal{}
class Dog:Animal{
    func Bark() {
        print("Bark")
    }
}

var animalArr = [Cat(), Dog(), Cat(), Dog()]
for animal in animalArr {
    if let curAnimal = animal as? Dog{
        curAnimal.Bark()
    }
}
