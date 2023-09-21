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
    
    private enum UserKeys :String, CodingKey {
        case id
        case name
        case userName = "username"
        case email
    }
    
    init(from decoder :Decoder) throws {
        
        let userContainer = try decoder.container(keyedBy: UserKeys.self)
        
        self.id = try userContainer.decode(Int.self, forKey: .id)
        self.name = try userContainer.decode(String.self, forKey: .name)
        self.userName = try userContainer.decode(String.self, forKey: .userName)
        self.email = try userContainer.decode(String.self, forKey: .email)
        
        //self.street = try userContainer.decode(String.self, forKey: .street)
        
    }
    
}
