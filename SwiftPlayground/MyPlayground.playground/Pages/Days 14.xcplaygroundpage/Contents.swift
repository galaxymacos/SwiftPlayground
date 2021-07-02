
import Foundation

// Mission: Get Taylor Swift's favorite album
func myFavAlbum(album: String){
    print("My favorite album is \(album)")
}

// Mission: Print Album release
func printAlbumInfo(name: String, year: Int){
    print("This album \(name) is released in \(year)")
}
printAlbumInfo(name: "Red", year: 2012)

// Count letter in string
//      1.
//func countLetterInString(_ string:String){
//    print("This string \(string) has \(string.count) letters")
//}
//      2.
//func countLetterInString(_ string:String){
//    print("This string \(string) has \(string.count) letters")
//}

func countLetter(in string:String){
    print("This string \(string) has \(string.count) letters")
}

func isAlbumTaylorSwift(album: String)->Bool{
    if album == "Red"{
        return true
    }
    else{
        return false
    }
}

// Optional
func getHaterStatus()->String{
    return "Hate"
}

func getHaterStatus(weather: String)->String?{
    if weather == "Sunny"{
        return nil
    }
    else{
        return "Hate"
    }
}


var status:String?
status = getHaterStatus(weather: "Sunny")
type(of: status)

func takeHaterAction(status: String)->String?{
    if(status == "Hate"){
        return "Hating"
    }
    return nil
}

if let status = getHaterStatus(weather: "Sunny"){
    takeHaterAction(status: status)
}

// Force unwrapping
func getAlbumYear(album: String)->Int?{
    switch album {
    case "Red":
        return 2012
    default:
        return nil
    }
}

"Album Red is released in \(getAlbumYear(album: "Red")!)"

// Optional Chaining
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

// Mission: What if I want to uppercase the result
albumReleased(year: 2006)?.uppercased()
albumReleased(year: 2007)?.uppercased()

// Mission: Nil coalescing
var searchResult = albumReleased(year: 2007) ?? "Unknown"

// Class
class Singer{
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing(){
        print("La La")
    }
}

var taylor = Singer(name: "Taylor", age: 30)
taylor.name
taylor.age
taylor.sing()

class CountrySinger: Singer{
    override func sing() {
        print("Country Liquor")
    }
}
taylor = CountrySinger(name: "Country Taylor", age:30)
taylor.sing()

// Create a heavy metal singer
class HeavyMetalSinger: Singer{
    var noiseLevel:Int
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)    // Done through a method call, which cannot be done
    }
    
    override func sing(){
        print("grgrgr")
    }
}
