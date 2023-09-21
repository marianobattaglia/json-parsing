import UIKit
import PlaygroundSupport

let url = URL(string: "https://jsonplaceholder.typicode.com/users")!

URLSession.shared.dataTask(with: url) { data, response, error in
    
    guard error == nil,
        let data = data else {
            print(error)
            return
    }
    
    print(data)
    
}.resume()



PlaygroundPage.current.needsIndefiniteExecution = true

