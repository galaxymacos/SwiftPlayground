import UIKit

// Lazy properties
struct FamilyTree{
    init(){
        print("Creating family tree!")
    }
}

struct Person{
    var name:String
    lazy var familyTree = FamilyTree()
    init(name:String) {
        self.name = name
    }
}

// The familyTree won't be created because of the lazy keyword
var me = Person(name: "Xun Ruan")
var myFriend = Person(name: "Steve Jobs")
me.familyTree
