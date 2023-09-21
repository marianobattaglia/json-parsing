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
    
    var id :Int!
    var name :String!
    var userName :String!
    var email :String!
    
    //var street :String!
    //var suite :String!
    //var city :String!
    //var zipCode :String!
    
    private enum UserKeys :String, CodingKey {
        
        case id
        case name
        case userName = "username"
        case email
    }
    
    required init(from decoder :Decoder) throws {
        
        if let userContainer = try? decoder.container(keyedBy: UserKeys.self) {
            
            self.id = try! userContainer.decode(Int.self, forKey: .id)
            self.name = try! userContainer.decode(String.self, forKey: .name)
            self.userName = try! userContainer.decode(String.self, forKey: .userName)
            self.email = try! userContainer.decode(String.self, forKey: .email)
            
        }
        
    }
    
}

if let user = try? JSONDecoder().decode(User.self, from: jsonData) {
    print(user.name!)
    print(user.userName!)
}


