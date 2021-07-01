let name = "Yongchen Liu"
//name = "Xun Ruan"

// Using type annotation without assigning it is allowed
var myFriend:String
myFriend = "Tim Mcgraw"
var age:Int
age = 25

// Double and float
var longitude:Double = 85.224421
var latitude:Float = -20.250192
latitude = -220.251192
latitude = -2220.251192
latitude = -22220.251192

//
var direct = "direct"
// is always preferred than
var indirect:String
indirect = "indirect"

var aNumber = 952.241 // it will always be double by default

// String interpolation
var myName = "galaxymaxx"
"my name is \(myName)"

// array
var songs = ["red","Back to December", "love song"]
type(of: songs)

// array that can store any types
var anythings:[Any] = [1, "vs", 2]

// How to create an empty array
var emptyArray:[String] = []
var or = [String]()
//var invalid[String]

// Dictionary
var person = ["first": "Taylor",
              "middle":"Alison",
              "last": "Swift",
              "month": "December",
              "website":"taylorswift.com"]

// loop
for i in 1...10{
    print("\(i) * 10 = \(i*10)")
}

// Mission: make faker fakes
var str = "Faker's gonna "
for _ in 1...5{
    str += "fake "
}
print(str)


// Mission: Make Taylor Swift sing
var lyrics = ["player", "hater", "heart-breaker", "faker"]
var actions = ["play", "hate", "break", "fake"]
for i in 0..<lyrics.count{
    var str = "\(lyrics[i]) is gonna"
    for _ in 1...5{
        str += (" \(actions[i])")
    }
    print(str)
}

// Mission: Get Taylor Swift's favorite album
func myFavAlbum(album: String){
    print("My favorite album is \(album)")
}

// Mission: Print Album release

