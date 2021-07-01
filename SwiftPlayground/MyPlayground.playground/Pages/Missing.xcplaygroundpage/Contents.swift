// Handling missing data

var name: String? = nil
name = "galaxymaxx"

if let unwrapped = name{
    print("\(unwrapped.count) letters")
}
else{
    print("missing name")
}

func greet(_ name: String?){
    guard let unwrapped = name else{
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}
