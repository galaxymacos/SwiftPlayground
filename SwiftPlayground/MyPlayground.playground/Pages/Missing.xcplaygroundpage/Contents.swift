// Handling missing data

var name: String? = nil
name = "galaxymaxx"

if let unwrapped = name{
    print("\(unwrapped.count) letters")
}
else{
    print("missing name")
}
