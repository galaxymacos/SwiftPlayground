import UIKit

extension Int{
    func isEven()->Bool{
        return self % 2 == 0
    }
    
    var iseven: Bool {
        return self % 2 == 0
    }
}

var myNum = 2
myNum.iseven
myNum.isEven()
