import UIKit

//:                             ------------------------------                                  Control Flow                       ----------------------------------


//:  ## For-In loops
//: Use the for-in loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string

let myArray = ["Kurosh", "Kurosh1", "kurosh2"]

for myArray in myArray{
    print("This is my array :\(myArray)")
}

//: Use if and switch to make conditionals, and use for-in, for, while, and repeat-while to make loops. Parentheses around the condition or loop variable are optional. Braces around the body are required.
//:
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

//: You can also iterate over a dictionary to access its key-value pairs. Each item in the dictionary is returned as a (key, value) tuple when the dictionary is iterated, and you can decompose the (key, value) tuple’s members as explicitly named constants for use within the body of the for-in loop.
//: Example:

let ageOfPeople = ["Kurosh":23,"pekka": 56,"mike":22]

for(people, age) in ageOfPeople{
    print("\(people)'s age is \(age)")
}


//: In some situations, you might not want to use closed ranges, which include both endpoints. Consider drawing the tick marks for every minute on a watch face.
//: Example:

let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark)
}


//: ##While-Loops
//: Example:



while(true){
    //statement
}


//: ##Repeat-While
//: Example:
//repeat{
//    //statement
//}while



//: ##Conditional Statements
//: Example:


var a = 1
var b = 2

if(a > b){
    print("a is not larger")
}else{
    print("b is the larger number")
}



//Switch



let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"


let someNumber: Int = 2

switch someNumber {
case 1:
    print("SomeNumber is Smaller")
default:
    print("SomeNumber is Bigger")
}



let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."








//: You can use if and let together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains nil to indicate that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional.
//:
var optionalString: String? = "Hello"
print(optionalString == nil)



var optionalName: String? = "John Appleseed"
var greeting = "Hello!"


if let name = optionalName {
    greeting = "Hello, \(name)"
}


//: If the optional value is nil, the conditional is false and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after let, which makes the unwrapped value available inside the block of code.
//:
//: Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.
//:
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy (x)?")
    default:
        print("Everything tastes good in soup.")
}



//: You use for-in to iterate over items in a dictionary by providing a pair of names to use for each key-value pair. Dictionaries are an unordered collection, so their keys and values are iterated over in an arbitrary order.
//:


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)


//: Use while to repeat a block of code until a condition changes. The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
//:



var n = 2
while n < 100 {
    n = n * 2
}
print(n)



var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)



//: You can keep an index in a loop—either by using ..&lt; to make a range of indexes or by writing an explicit initialization, condition, and increment. These two loops do the same thing:
//:



var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)





//: Use ..&lt; to make a range that omits its upper value, and use ... to make a range that includes both values.
//:
