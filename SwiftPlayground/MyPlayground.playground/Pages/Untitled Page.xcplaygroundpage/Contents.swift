import UIKit

// Protocol-oriented programming
protocol Identifiable{
    var id:String{get set}
    func identify()
}

extension Identifiable{
    func identify(){
        print("My ID is \(id)")
    }
}

struct User: Identifiable{
    var id:String
}

let twoStraws = User(id: "twoStraws")
twoStraws.identify()
