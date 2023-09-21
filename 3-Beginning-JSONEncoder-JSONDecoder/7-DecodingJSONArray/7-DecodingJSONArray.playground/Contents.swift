//: Playground - noun: a place where people can play

import UIKit

struct Place : Decodable {
    
    var name :String
    var latitude :Double
    var longitude :Double
    var visited :Bool
}

let json = """

[
{
"name" : "Costa Rica",
"latitude" : 23.45,
"longitude" : 45.23,
"visited" : true
},
{
"name" : "Puerto Rico",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Mexico City",
"latitude" : 23,
"longitude" : 45,
"visited" : true
},
{
"name" : "Iceland",
"latitude" : 23,
"longitude" : 45,
"visited" : false
}
]

""".data(using: .utf8)!

let places = try! JSONDecoder().decode([Place].self, from: json)
places[0].name
places[1].name
places[2].name
print(places)
