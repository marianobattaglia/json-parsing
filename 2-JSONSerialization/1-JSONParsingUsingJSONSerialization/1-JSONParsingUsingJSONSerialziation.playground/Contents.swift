//: Playground - noun: a place where people can play

import UIKit

let json = """

{
   "firstName" : "John",
   "lastName" : "Doe",
   "age" : 34
}

""".data(using: .utf8)!

if let dictionary = try! JSONSerialization.jsonObject(with: json, options: .allowFragments) as? [String:Any] {
    
    dictionary["firstName"]
    dictionary["age"]
}







