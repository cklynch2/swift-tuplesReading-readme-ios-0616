func downloadImage(atURL url: String) -> (Bool, String) {
    // TODO: Download image
    // if no error, return true
    // otherwise, get error string and return false
    let error = "Image no longer exists"
    return (false, error)
}

let result = downloadImage(atURL: "http://example.com/image.png")
result.0
result.1
print("Success? \(result.0)")
print("Message: \(result.1)")

let person = (name: "Jim", age: 30)
person.age
person.name
print("\(person.name)'s age is \(person.age)")

var person2 = (name: "Jim", age: 30)
print("\(person2.name)'s age is \(person2.age)")
person2.age = 32
print("\(person2.name)'s age is \(person2.age)")


func makeAPlan(dayAndForecast: (day: String, weather: String)) {
    switch (dayAndForecast) {
    case ("Monday", _):
        print("You should hit the town, nothing will be crowded!")
    case ("Saturday", "Sunny"):
        print("Pack your towel and sunscreen, we are heading to the beach!")
    case (_, "Hailstorm"):
        print("Stay in and code!")
    default:
        print("The world is your oyster, go where the wind blows you!")
    }
}

var dayAndForecast = (day: "Tuesday", weather: "Partly sunny")
makeAPlan(dayAndForecast) // This prints "The world is your oyster..."
dayAndForecast.day = "Monday"
makeAPlan(dayAndForecast) // This prints "You should hit the town..."

// You can use tuples to access/ modify elements of an enumerated array based on their index and/or value. Using the deli line example from a previous lab...
var deliLine = ["Jon Stewart", "Billy Crystal", "Claire Lynch", "Calvin Stalvig"]

func addPersonToLine(name: String) -> String {
    deliLine.append(name)
    
    var greeting = ""
    for (index, name) in deliLine.enumerate() {
        switch (index, name) {
        case (0, _):
            greeting = "Welcome, \(name)! You are first in line."
        case(_, "Anthony Bourdain"):
            greeting = "Welcome, Tony! You are the shit and we will bring you everything you want immediately."
        case(_, "Jon Stewart"):
            greeting = "Hey, Jon! Will you run for President if we give you free sandwiches?"
        default:
            greeting = "Welcome, \(name)! You are number \(index+1) in line."
        }
    }
    return greeting
}
print(addPersonToLine("Homer Simpson"))
print(addPersonToLine("Anthony Bourdain"))
