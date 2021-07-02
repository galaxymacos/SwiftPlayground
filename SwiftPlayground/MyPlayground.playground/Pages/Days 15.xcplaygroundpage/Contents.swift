
import Foundation

// Objective-C

// Mark the class to be callable by System OS
@objcMembers class SystemRequest{
    // Mark the function to be callable by System OS
    @objc func wakeMeUp(){
        print("Walk me up in 10 minutes")
    }
}

struct Person{
    var clothes: String{
        willSet{
            updateUI(msg: "Clothes is changing from \(clothes)")
        }
        didSet{
            updateUI(msg: "Clothes is changing to \(clothes)")
        }
    }
}

func updateUI(msg: String){
    print(msg)
}

var taylor = Person(clothes: "Short-skirt")
taylor.clothes = "pantyhose"


// Computed property
struct ManWithAge{
    var age: Int
    var ageInDogYear: Int{
        get{
            return age*7
        }
        set{
            
        }
    }
    var readOnlyAgeInDogYear: Int{
        return age*7
    }
}
