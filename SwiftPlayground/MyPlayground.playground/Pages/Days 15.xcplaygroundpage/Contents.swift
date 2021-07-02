
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

// Static properties and methods
struct TaylorFan{
    var name: String
    var age: Int
    static var favoriteSong: String = "Look what you make me do"
}

TaylorFan.favoriteSong

// access control

struct Test{
    private var password: String
    fileprivate var onlyInThisFile: String
    internal var onlyForYourself: String
    public var forEveryone: String
}

//

class Album{
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance(){
        print("The album \(name) sold well")
    }
}

class StudioAlbum: Album{
    var studio:String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() {
        print("The studio album \(name) sold well")
    }
}

class LiveAlbum: Album{
    var location:String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() {
        print("The live album \(name) sold well")
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var albums:[Album] = [taylorSwift, fearless, iTunesLive]
for album in albums{
    album.getPerformance()
    if let studioAlbum = album as? StudioAlbum{
        print(studioAlbum.studio)
    }
    else if let liveAlbum = album as? LiveAlbum{
        print(liveAlbum.location)
    }
}

albums = [taylorSwift, fearless]
for album in albums{
    let studioAlbum = album as! StudioAlbum
    print("\(studioAlbum.name)")
}

// Type casting
print("--------\n")
for album in albums as? [StudioAlbum] ?? [StudioAlbum]() {  // Try to convert an album array to a studio album array (every element must be a StudioAlbum in this arr in order for this conversion to work)
    print(album.studio)
}

// Convert int to string
var num = 1
// This will crash
//var string = num as! String
var string = String(num)

// extension
extension Int{
    func addOne() -> Int{
        return self+1
    }
    
    // change itself
    mutating func addOneToSelf(){
        self += 1
    }
}

// extension protocol
extension Int{
    func clamp(high: Int, low: Int)->Int{
        if self > high {
            return high
        }
        else if self < low{
            return low
        }
        return self
    }
}

let bigNum: UInt64 = 5
5.clamp(high: 10, low: 0)

// BinaryInteger is a protocol which Int, Int32...all agree to
extension BinaryInteger{
    func clamp(low: Self, high: Self)->Self{
        if self > high{
            return high
        }
        else if self < low{
            return low
        }
        return self
    }
}
