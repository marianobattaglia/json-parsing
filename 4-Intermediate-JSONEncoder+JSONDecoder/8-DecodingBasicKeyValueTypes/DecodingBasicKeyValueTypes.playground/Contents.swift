//: Playground - noun: a place where people can play

import UIKit

struct PlacesResponse : Decodable {
    var places :[Place]
}

struct Place : Decodable {
    
    var name :String
    var latitude :Double
    var longitude :Double
}

let json = """

{
     "places":[
            {
                "name" : "Costa Rica",
                "latitude" : 34.56,
                "longitude" : 65.67
            },
            {
                "name" : "Boston",
                "latitude" : 134.56,
                "longitude" : 265.67
            }
            ]
}


""".data(using: .utf8)!

/// Decoding using Key-Value Using "Response Model"
let placesResponse = try! JSONDecoder().decode(PlacesResponse.self, from: json)
print(placesResponse.places)

/// Decoding using Key-Value type pair (as a Dictionary)
//let placesDictionary = try! JSONDecoder().decode([String:[Place]].self, from: json)
//let places = placesDictionary["places"]
//print(places)




