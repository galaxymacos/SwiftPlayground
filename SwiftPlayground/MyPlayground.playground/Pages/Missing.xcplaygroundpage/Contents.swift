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

// Force unwrapping
let str = "5"
let num = Int(str)!


//  let str = "crash"
//  let num2 = Int(str)!
//  this code will crash


// Implicitly unwrapped optionals
    // 我们可以像Int一样使用Int!，但是在nil情况下会crash
let age: Int! = nil

// Nil Coalescing
func username(for id: Int)->String?{
    if id == 1{
        return "Taylor Swift"
    }
    else{
        return nil
    }
}

let user = username(for: 2) ?? "Anonymous"  // ?? 两边必须有空格
