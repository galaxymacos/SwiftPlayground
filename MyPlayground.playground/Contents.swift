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



