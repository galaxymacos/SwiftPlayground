import UIKit

// Mutability

// class function can change variable by default
class Singer{
    var name = "Taylor Swift"
    func changeName(){
        name = "Ed Sheeran"
    }
}

var singer = Singer()
singer.changeName()

// struct function needs the "mutating" key word in order to change variable
struct Shape{
    var name = "Square"
    mutating func changeName(){
        name = "Square Changed"
    }
}

var unknownShape = Shape()
unknownShape.changeName()
