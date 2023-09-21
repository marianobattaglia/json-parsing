//: Playground - noun: a place where people can play

import UIKit

struct Customer {
    
    var firstName :String
    var lastName :String
    var age :Int
    
}

extension Customer {
    
    init?(dictionary :[String:Any]) {
        
        guard let firstName = dictionary["firstName"] as? String,
            let lastName = dictionary["lastName"] as? String,
            let age = dictionary["age"] as? Int else {
                return nil
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
}



let json = """

{
   "firstName" : "John",
   "lastName" : "Doe",
   "age" : 34
}

""".data(using: .utf8)!

if let dictionary = try! JSONSerialization.jsonObject(with: json, options: .allowFragments) as? [String:Any] {
    
    if let customer = Customer(dictionary: dictionary) {
        print(customer)
    }
}










