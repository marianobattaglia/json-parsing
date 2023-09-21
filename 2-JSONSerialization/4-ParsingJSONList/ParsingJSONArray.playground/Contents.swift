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

[
  {
     "firstName" : "John",
     "lastName" : "Doe",
     "age"  : 23
  },
  {
     "firstName" : "Mary",
     "lastName" : "Kate",
     "age"  : 35
  },
  {
     "firstName" : "Alex",
     "lastName" : "Lowe",
     "age"  : 45
  }

]

""".data(using: .utf8)!

if let customerDictionaries = try! JSONSerialization.jsonObject(with: json, options: .allowFragments) as? [[String:Any]] {
    
    // Long way:
    let customers1 = customerDictionaries.compactMap { dictionary in
        return Customer(dictionary: dictionary)
    }
    print(customers1)
    
    // Short way:
    let customers2 = customerDictionaries.compactMap(Customer.init)
    
    print(customers2)
}













