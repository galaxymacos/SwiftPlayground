enum PasswordError: Error{
    case Obvious
}

func checkPassword(password: String) throws -> Bool{
    if password == "password"{
        print("Too obvious")
        throw PasswordError.Obvious
    }
    else{
        return true
    }
}

do{
    try checkPassword(password: "password")
    print("The password is good")
}
catch{
    print("The password is not good")
}


// Try?


enum IdError: Error{
    case Obvious
}

func checkId(id: String) throws -> Bool{
    if id == "galaxymaxx"{
        print("Too obvious")
        throw IdError.Obvious
    }
    else{
        return true
    }
}

    //  if try?checkId(id: "e")!=nil{
if let result = try?checkId(id: "e"){
    print("good")
}
else{
    print("no good")
}

// Try!
try!checkId(id: "fe")
print("no fault at all")

