import UIKit

// Protocols

protocol Identifiable{
    var id:String{get set}
}

struct User: Identifiable{
    var id:String
}

func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}

var user = User(id: "example ID")
displayID(thing: user)
