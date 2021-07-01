import UIKit

// static properties and methods
struct Student{
    static var classSize = 0
    var name:String
    init(name:String){
        self.name = name
        Student.classSize += 1
    }
}

var me = Student(name:"Xun")
var steve = Student(name:"Steve Jobs")
Student.classSize
