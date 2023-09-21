//: Playground - noun: a place where people can play

import UIKit

/// Encodear: Convertir nuestro Modelo en JSON

/// Creo Estruct Customer con protocolo Codable (Decodable+Encodable)
struct Customer : Codable {
   
    var firstName :String
    var lastName :String
    var age :Int
    
    /// Inicializador: Ya no es necesario gracias a JSONEncoder.encode()
    /*
    private enum CodingKeys : String, CodingKey {
        case firstName
        case lastName
        case age
    }
    
    func encode(to encoder :Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.firstName, forKey: .firstName)
        try container.encode(self.lastName, forKey: .lastName)
        try container.encode(self.age, forKey: .age)
    } */
}

/// Creo una constante customer desde el Modelo
let customer = Customer(firstName: "John", lastName: "Doe", age: 45)
/// Encodeo el objeto Customer a uno JSON
let encodedCustomerJSON = try! JSONEncoder().encode(customer)

print(encodedCustomerJSON)

print(String(data: encodedCustomerJSON, encoding: .utf8)!) // {"firstName":"John","lastName":"Doe","age":45}




