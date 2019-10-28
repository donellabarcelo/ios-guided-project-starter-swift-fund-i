//: # Swift Fundamentals I
//: ## Hello, World!
//: As tradition dictates, any exploration of a new language needs to start with "hello, world"
let helloString = "Hello, World!"
print(helloString)

let helloString1 = "Hello, World 2.0!"
print(helloString1)

//ios12 cohort overview
let helloString2 = "Hello, World 3!"
print(helloString2)
//: ## Comments
//: A comment is text that is ignored by the compiler. So it can be plain text, or even code. If it formatted like the examples below, it will be completely ignored when the project is built. Comments are notes to yourself or others about how a given block of code functions.
// A single line comment is one with two slashes as the first characters
/*
 * A multi-line comment
 * is one that is bounded by
 * /* and */ characters
 */

/* This is my final go around at lambda school.
 ios12 is the best cohort!
 */
//: ## Identifiers
//: first character A-Z or a-z or _, followed by any of these plus 0-9
let lambdaSchool = "awesome", ls100 = "100%", _travelBack = "1985"

let iOS11 = "Best cohort", ls200 = "100%", _travelBack1 = "1995"

//ios12 cohort overview
let myName = "Nella Barcelo"
//: ## Mutability
//: There are two kinds of containers that hold values in Swift. One kind is called a constant, because once a value has been set, it cannot change for the lifetime of that container. Constants are declared with the `let` keyword.
// constants and variables

// let - means that the value is immutable, or unchangeable.
let students = 30
let staff = 4

//var - means that the value can change whenever we want it to.
var totalPeople = students + staff

totalPeople = 4

//ex 2
let eyeColor = "Brown"
var age = 23
//: Variables are declared with the 'var' keyword
var appleCount = 10
appleCount += 15
print(appleCount)
//: ## Type Inference and Explicit Typing
//: All containers in Swift must have a type set on them. The containers we've seen so far had their types set implicitly. This is called _type inference_. Meaning the kind of object stored in the container was determined by looking at what kind of value was assigned to the container.
// Type-safety: Once you have declared a type for something, it must stay that type forever.

let xcode = "Software Developer Kit for Apple's operating systems"  //string type

//Non-type inference
var myNumber: Int = 10 //integer type
myNumber = 11  //changed the variable of myNumber from 10 to 11 by referencing myNumber
print(myNumber)

//Type inference (xcode understands the value type, whether it be string, int, double, boolean, float)
var someString = "This is a string"

let ios = "Apple's mobile operating system" //string type
//: In the line above, the constant `ios` stores a value "Apple's mobile operating system". This value is a `String`, so the data type of `ios` is `String`. The type was _inferred_ by the value provided.
//: Another way to type a container is to set it explicitly. See some examples of this below.
// iPhones
var onSale: Bool = true

// 1299.99
var price: Double = 1299.99

let modelName = "iPhone 11 Pro Max"

let discountQty = 15
//: ## Type Safety
//: Once a container's data type is set, it cannot hold a value of any other type
var life = 42
life = 12
//: ## Type Coercion
//: Types are never automatically converted into another type.
let label = "The width is "
let width = 94

let widthLabel = label + String(width)  //String(width) is a string initializer
print(widthLabel)
//: ## String Interpolation and Concatenation
//: Using the `+` operator with two strings is called _string concatentation_. One string is appended to the end of another.
let heightLabel = "The height is " + "100"
//: The below example shows the _string interpolation_ characters (`\()`). These allow a `String` (or non-string) value to be placed in-line inside a larger `String` literal value. If the value is not already a `String`, it will be converted.
let anotherWidthLabel = "The width is \(width)"

let widthlabel2 = "\(label)\(width)"
//: ## Collections
//: ### Arrays
//: A Swift array is a collection of like objects, and they are stored in the order they are added. Accessing a particular element is done by using its index value (which starts at 0).
let shipCaptains = ["Malcom Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]

// Arrays - Ordered list of items

// What index does james live at?  2
// Subscript - You pass in the index of the item you want, and it gives you back the item at the index in the array.
//let james = shipCaptains[2]

let sameCaptains = ["Malcom Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo"]
let differentCaptains = ["Kathryn Janeway", "Poe Dameron"]

print(differentCaptains[0])
//: Array equality is determined by looking at each element. If all elements are the same, and in the same order, the two arrays are equal.
if shipCaptains == sameCaptains {
    print("Arrays are equal")
} else {
    print("Arrays are not equal")
}
//: Since `shipCaptains` was declared as a constant, we must convert it to a mutable array before we can add entries.
// Make a (mutable) copy of the shipCaptains array
var moreCaptains = shipCaptains

// .append adds an element to the END of an array
moreCaptains.append("Kathryn Janeway")

// Like append, but you can choose the index to put the new value at
//    .insert to add value to the index of your chose
moreCaptains.insert("New Captain", at: 0)

// This changes the item at a given index to a new value
moreCaptains[1] =  "Captain Morgan"

print(moreCaptains)
//: ### Dictionaries
//: A Swift dictionary is similar to an array in that is a collection, but the itesm are stored in no particular order. To access an item, its associated key is provided. Dictionaries are also called "key-value" stores. The key has a type, and the value can have the same or a different type.
var occupations = ["Nella": "iOS Developer", "Mary": "Coffee Shop Manager"]

// What is Nella's occupation?
occupations["Nella"] // This'll pull out Nella's occupation value.

// Adding Jayne in Public Relations to our Occupations dictionary
occupations["Jayne"] = "Public Relations"
print(occupations)

// This also adds a value into our Occupations dictionary
occupations.updateValue("Team Lead", forKey: "Jonah")
print(occupations)

// example 2
let ageDictionary: [String: Int] = ["Joe": 30]

//: ## Looping
//: ### `for`
//: `for` loops allow for iterating over a collection of elements (usually an array), examining each element in turn.
let scores = [92, 10, 39, 28, 81]

// I want to know how many students passed the test
// A passing grade is over 70

// Loop through the array and check if each score is over 70 or not

var passingStudents = 0

for score in scores {
    if score > 70 {
//        passingStudents = passingStudents + 1 or you can do
        passingStudents += 1  // Which does the same thing as the above commented line
    }
}

print("\(passingStudents) students scored a passing grade or above")
//: ### `switch`
//: `switch` statements are useful when a multiple-choice path is possible for your code, and you want to choose a single path at runtime, based on some criteria.
// This is a randomly generated number. We want to print out what number we got
let number = 6

switch number {
case 1:
    // This will run if value of number is 1
    print("Got 1")
case 2, 3, 4, 5:
    print("Got 2, 3, 4, or 5")
case 6...10:
    print("Got 6 to 10")
default:
    print("Got default")
}

// example 2
let furniture = "Chair"
switch furniture
{
case "Table":
    print("Got Table")
case "Chair", "Stool", "Bench":
    print("Got Something to sit on")
default:
    print("Default")
}
//: ## Functions
//: A function in Swift is nothing more than a collection of instructions that accomplish some task. The advantage to grouping the instructions into a function is that the function can then be called whenever that task should be performed, rather than having to list out those instrutions a second, third, or nth time.
// DRY - Don't Repeat Yourself

// I want to provide an array of scores to this function, and it will return me a single integer that is the averaged score.
func averageScore(scores: [Int]) -> Int {
    var totalScore = 0
    
    for score in scores {
        totalScore += score
    }
    print(totalScore)
    return totalScore / scores.count  //  / = division
}

averageScore(scores: scores)

// example 2: basic function
func printHelloWorld() {
    print("Hello, World!")
}

printHelloWorld()
//: ## Tuples
//: Tuples are a lightweight way of grouping related values into a single compound value.
let carrots = (name: "carrots", aisle: 4, category: "produce", count: 25)
let soup = (name: "tomato soup", aisle: 6, category: "canned goods", count: 100)
let cereal = (name: "Frosted Flakes", aisle: 2, category: "cereals", count: 43)
let pringles = (name: "Pringles", aisle: 7, category: "chips", count: 15)
let tostitos = (name: "Tostitos", aisle: 7, category: "chips", count: 26)
let seafood = (name: "crab legs", aisle: 1, category: "seafood", count: 8)
let rice = (name: "Minute Rice", aisle: 2, category: "dry rice and beans", count: 62)
let turkey = (name: "Boar's Head turkey", aisle: 9, category: "deli", count: 4)

let groceries = [carrots, soup, cereal, pringles, tostitos, seafood, rice, turkey]

// How many items are in all of these groceries?

func determineTotalCount() -> Int {
    var totalCount = 0
    
    for grocery in groceries {
        totalCount += grocery.count
    }
    return totalCount
}

print("Total count of all grocery items: \(determineTotalCount())")
