import UIKit

// Deinitializers
class Person{
    static var count = 0
    var name = "John Doe"
    var num: Int
    init(){
        Person.count+=1
        num = Person.count
        print("\(name) \(num) is alive")
    }
    
    deinit {
        print("\(name) \(num) is dead")
    }
}

for _ in 1...3{
    var person = Person()
}
