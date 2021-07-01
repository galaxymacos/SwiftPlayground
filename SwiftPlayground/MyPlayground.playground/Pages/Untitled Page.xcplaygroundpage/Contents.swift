import UIKit


// Copying objects

//      Class use reference
class Singer{
    var name:String = "Taylor Swift"
}

var singer = Singer()
var singer2 = singer
singer.name = "Jusin bieber"
singer2.name

//      Struct use copy
struct Shape{
    var name:String = "Square"
}
var shape = Shape()
var shape2 = shape
shape.name = "Circle"
shape2.name

