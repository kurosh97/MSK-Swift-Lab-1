import UIKit

//: ## Functions and Closures
//:
//: We use func to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -&gt; to separate the parameter names and types from the function’s return type.
//:
func greet(name: String, day: String) -> String {
    return "Hello (name), today is (day)."
}
greet("Bob", day: "Tuesday")


//: > Experiment:
//: > Remove the day parameter. Add a parameter to include today’s lunch special in the greeting.
//:

let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)



//: Functions can also take a variable number of arguments, collecting them into an array.
//:
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)



//: > Experiment:
//: > Write a function that calculates the average of its arguments.
//:
//: Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
//:
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()



//: Functions are a first-class type. This means that a function can return another function as its value.
//:
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)



//: A function can take another function as one of its arguments.
//:
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)



//: Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed—you saw an example of this already with nested functions. You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.
//:
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})



//: > Experiment:
//: > Rewrite the closure to return zero for all odd numbers.
//:
//: You have several options for writing closures more concisely. When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
//:
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)



//: You can refer to parameters by number instead of by name—this approach is especially useful in very short closures. A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.
//:
let sortedNumbers: () = numbers.sort { $0 > $1 }
print(sortedNumbers)




//this function has return tipe {   here    }
func greetSomeone(person: String)-> String{
    let greeting = "Hello again " + person
    return greeting
}

//Here we can call the function
print(greetSomeone(person: "Kurosh"))

func greet(person: String)->String{
    return person
}




//This function takes a person’s name and whether they have already been greeted as input, and returns an appropriate greeting for that person:
func greetSomeoneOne(person: String, alreadyGreeted: Bool)-> String{
    if alreadyGreeted {
        return greetSomeone(person: person)
    }
    return greet(person: person)
}

//Here we can call the function
print(greetSomeone(person: "Kurosh"))



// Functions with Multiple Return Values

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
