//: [Previous](@previous)

class Hotel{
    var starRating:Int
    init?(rating: Int) {
        if rating <= 1{
            return nil
        }
        starRating = rating
    }
}

var myHotel = Hotel(rating: 1)
