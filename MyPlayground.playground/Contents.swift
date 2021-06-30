import UIKit

struct Sport{
    var name: String
    var isOlympicGame: Bool
    var olympicStatus:String{
        if isOlympicGame{
            return "\(name) is an olympic game"
        }
        else{
            return "\(name) is not an olympic game"
        }
    }
}

var aGame = Sport(name: "video game", isOlympicGame: false)
aGame.olympicStatus

// Property Observers

struct Progress{
    var task: String
    var amount: Int{
        didSet{
            print("\(task) is now \(amount)% complete")
        }
        willSet{
            print("\(task) was \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Downloading", amount: 40)
progress.amount = 50

// Methods

struct City{
    var population: Int
    func collectTaxes()->Int{
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

// Mutating Methods
struct Bicycle{
    var currentGear: Int
    mutating func changeGear(to newGear: Int){
        currentGear = newGear
    }
}

// Properties and methods of string
let string = "Do or do not, there is no try."
string.count
string.hasPrefix("Do")
string.uppercased()
string.sorted()

// Properties and methods of array
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
toys.sorted()
toys
toys.remove(at: 0)
toys

var usedNumbers = [Int]()
for i in 1...10{
    usedNumbers.append(i)
}
usedNumbers.count
