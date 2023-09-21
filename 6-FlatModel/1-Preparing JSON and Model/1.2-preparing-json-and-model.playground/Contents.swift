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

struct User :Decodable {
    
    let id :Int
    let name :String
    let userName :String
    let email :String
    
    let street :String
    let suite :String
    let city :String
    let zipCode :String
    
}
