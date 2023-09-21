import UIKit

/// ACTIVIDAD: La estructura user se encuentra en minuscula, pero el JSON tiene su primer letra mayuscula.
/// Utilizo la propiedad "AnyKey" junto a una custom "Decoding Strategy" para decodear el JSON y transformarlo a la estructura User.

struct User: Decodable {
    let name : String
    let age : Int
    
    ///   CodingKeys
//    private enum CodingKeys: String, CodingKey {
//        case name = "Name"
//        case age = "Age"
//    }
}

///   AnyKey -> Alternativa para hace un CodingKey global
///   1. Creo una estructura para modificar todas las KEYS string.
struct AnyKey: CodingKey {
    var stringValue: String
    
    init?(stringValue: String) {
        self.stringValue = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    init?(intValue: Int) {
        return nil
    }
}

/// 2. Creo una estructura para crear la DecodingStrategy
struct DecodingStrategy {
    static var firstUpperCaseLetter: ([CodingKey]) -> CodingKey {
        return { keys -> CodingKey in
            let key = keys.first!
            let modifiedKey = key.stringValue.prefix(1).lowercased() + key.stringValue.dropFirst()
            return AnyKey(stringValue: modifiedKey)!
        }
    }
}

let json = """

    {
        "Name": "John Doe",
        "Age": 34
    }

"""

guard let jsonData = json.data(using: .utf8) else {
    throw fatalError("Unable to get data!")
}

/// 3. Creo decoder usando mi DecodingStrategy ya creado
let decoder = JSONDecoder()
decoder.keyDecodingStrategy = .custom(DecodingStrategy.firstUpperCaseLetter)

//let user = try? JSONDecoder().decode(User.self, from: jsonData)
//print(user)

let user = try? decoder.decode(User.self, from: jsonData)
print(user)
