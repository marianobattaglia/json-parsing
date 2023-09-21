import UIKit

let jsonData :Data = """

{

    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
        "street": "Kulas Light",
        "suite": "Apt. 556",
        "city": "Gwenborough",
        "zipcode": "92998-3874",
    }

}

""".data(using: .utf8)!

class User :Decodable {
    
    var id :Int
    var name :String!
    var userName :String!
    var email :String!
    var street :String!
    var suite :String!
    var city :String!
    var zipCode :String! 
    
}


