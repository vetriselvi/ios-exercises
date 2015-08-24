//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let string1 = "My favorite cheese is "
    let string2 = string1 + cheese
    return string2
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var  numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray += [5]

numberArray


var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

numberDictionary


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE

for i in 1...10 {
    print(i)
    
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for i in 0..<10{
    print(i+1)
}


let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
//    let extPrice = worf["favorite drink]
    
    let worfFavDrink = worf["favorite drink"]
    let picardFavDrink  = picard["favorite drink"]
    
 //  var drinkie =  worfFavDrink + picardFavDrink
    
    //var favDrink = worfFavDrink + picardFavDrink
    let extraString = "\", \""
    
  let outputString =  worfFavDrink! + extraString + picardFavDrink!
    
 
  return [outputString]

}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

//let stringWithSemicolon = ";".join(strings)

func breakfastArrayToSemicolonString(breakfastList:Array<String>)->String{
//    var n = 0;
//    let semicolonStr = ";"
//    let breakfastFastArray = breakfastList[n]
//    let breakfastFastArrayStr = String(breakfastFastArray)
//
//    for items in breakfastList{
//        
//        breakfastFastArrayStr[n] = breakfastFastArrayStr[n] + semicolonStr
//        n++
//    }
//    
//    return breakfastFastArray
    let stringWithSemicolon = ";".join(strings)
    return stringWithSemicolon
    
}

breakfastArrayToSemicolonString(strings)
let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

//
//let cerealArraySorted = sorted(cerealArray, {cereal1, cereal2 in cereal1.darkArtsGrade > student2.darkArtsGrade})
//var cerealArraySorted = cerealArray.sort()

//var sortedNames = cerealArray.sorted{ $0.localizedCaseInsensitiveCompare($1) == NSComparisonResult.OrderedAscending }

//Method 1
var sortedArray = cerealArray.sorted ({ (s1: String, s2: String) -> Bool in
    return s1 < s2
})

sortedArray

//Method 2
var sortedArray2 = cerealArray.sorted { $0.localizedCaseInsensitiveCompare ($1) == NSComparisonResult.OrderedAscending }

sortedArray2