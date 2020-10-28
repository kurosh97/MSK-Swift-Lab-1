import UIKit



//:  “Hello, world!”  In Swift
//:
print("Hello, world!")


//: ## Simple Values
//:
//: let to make a constant and var to make a variable. The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once. This means you can use constants to name a value that you determine once but use in many places.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42
//myConstant = 23    this gives an error


//: A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that myVariable is an integer because its initial value is an integer.
//:
//: If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 70
//implicitInteger = 70.5  this gives error. Becouse the varieble is integer and we are asighning double to it

var implicitDouble = 70.0 // double

implicitDouble = 71


let explicitDouble: Double = 70



//: > Experiment:
//: > constant with an explicit type of Float and a value of 4.
let myVar : Float = 4



//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)



//: > Experiment:
//: > removing the conversion to String from the last line to see what error I will  get?


let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples)."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."



//: > Experiment:
//: > Using \() to include a floating-point calculation in a string and to include someone’s name in a greeting.

let myFloat = 4.1111

let myNumber = "Here is my Float number: \(myFloat)"





//: Creating arrays and dictionaries using brackets ([]), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"



var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"



//: To create an empty array or dictionary, we have to use the initializer syntax.
//:
let emptyArray = String()
let emptyDictionary = String(); Float()



//:  empty array as []
//:empty dictionary as [:]

shoppingList = []
occupations = [:]


