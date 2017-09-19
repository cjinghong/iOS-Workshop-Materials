//: # Swift Cheat Sheet
//: ## Variables
// How to declare a variable
// var yourVariableName : VariableType = value

var mutableInteger : Int = 12
var mutableDouble : Double = 2.1

var myName : String = "Jing Hong"
print(myName)

// Use ‘let’ for a constants
let constantDouble : Double = 3.14
let firstName : String = "Chan"
//: ### Optional variables ###
var optionalInteger : Int?
optionalInteger = nil

// Unwrapping optionals

// Example 1:
// If optionalInteger is not nil, unwrap and store it in a variable called someInteger.
// else, do something else.
if let someInteger = optionalInteger {
    print(someInteger)
} else {
    print("optionalInteger is nil! Let's do this instead.")
}

// Example 2:
// Some integer will be optionalInteger if it is not nil,
// and if optionalInteger is nil, it will be set to 0
let someInteger: Int = optionalInteger ?? 0
print(optionalInteger ?? "Theres nothing here")
//: ## Strings
let hello: String = "HELLO"
let world: String = "WORLD"
let combinedString: String =
    "\(hello) \(world) goodbye!"

// Parsing Strings
var tipString: String = "2499"
// Parsing Strings to a different type always becomes an Optional variable, as it might fail.
var tipInt: Int? = Int(tipString)
var tipDouble: Double? = Double(tipString)
//: ## Arrays
var anArrayOfStrings: [String] = ["This", "is", "an", "array", "of"]
var anotherString = "strings"
anotherString = "1.2515"

anArrayOfStrings.append(anotherString)
// anArrayOfStrings now contains ["This", "is", "an", "array", "of", "strings"]
//: ## Dictionary
var personsAge: [String : Int] = ["Rick Sanchez" : 50, "Morty Smith" : 14]

print("Morty is \(personsAge["Morty Smith"])")
personsAge["Morty Smith"] = nil
personsAge["Jerry Smith"] = 34

for (key, value) in personsAge {
    print("\(key) is \(value) years old.")
}
//: ## Flow control
// If else statements
if 1 == 2 {

} else if 2 == 3 {

} else {

}

// Switch statement
var value = 5
switch value {
case 1:
    print("One")
case 2:
    print("Two")
default:
    print("I can't count!")
}

//: ### Loops
// Loop from 0 to 3, inclusive of 3.
// 0, 1, 2, 3
for i in 0...3 {
    print(i, terminator: "")
}
print()

// Not inclusive of 3.
// 0, 1, 2
for i in 0..<3 {
    print(i, terminator: "")
}
print()

// Looping through an array (Enhanced for loop in java)
let fruitsArray: [String] = ["Pineapple", "Apple", "Penpineapple"]
for fruit in fruitsArray {
    print(fruit, terminator: " ")
}
print()
//: ## Methods
// A method with no parameter and no return value
func doSomething() {
    print("Something")
}
// Using the method
doSomething()

// A method with a parameter of Int and return type of Int
func addOne(number: Int) -> Int {
    return number + 1
}
// Using the method
addOne(number: 1)
//: ## Classes and Protocols
class Human {
    var property: String
    var optionalProperty: String?

    // Initializer (or a Constructor in Java)
    init(property: String) {
        self.property = property
    }
}

// Defining a protocol.
// (Similar to an Interface in Java)
protocol CanWalk {
    func walk()
}

// Human is superclass of Boy,
// And Boy also conforms to the protocol CanWalk
class Boy: Human, CanWalk {
    // Overriding superclass' initializer
    override init(property: String) {
        super.init(property: property)
    }

    // This needs to be implemented, as it conforms to CanWalk protocol
    func walk() {
        print("I am walking")
    }
}
//: ## Initializing a class
let jingHong: Boy = Boy(property: "short")
jingHong.walk()
//: ## Singleton
class MySingleton {
    // Static variable
    static let sharedInstance = MySingleton()
    // Private init, so nobody else can initialize another instance of MySingleton
    private init(){}
}
// Using it
MySingleton.sharedInstance
//: ## Enums
enum Gender: String {
    case Male = "male"
    case Female = "female"
}
let myGender: Gender = .Male
//: ## Other things
/*
 Apple developer documentation
 https://developer.apple.com/documentation/

 Swift Documentation
 https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html
 */


