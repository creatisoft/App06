//
//  main.swift
//  App06
//
//  Created by Christopher on 1/5/22.
//  https://www.creatisoft.com

import Foundation

var gameLoop = true


//An array of words
let ourWordList = ["Hello", "Goodbye" , "Museum" , "State" , "Chicken" , "John" , "Apartment" , "Seattle", "Chicago", "Boy", "Girl" , "Computer" , "Programming"]

//Keeping track of the word to randomly show
var wordIncrement:Int = 0

//Point tracker
var points:Int = 0

print("            Simple typing game")
print("   Type the word you see to earn a point")
print("       Type 'Quit' to quit the program")
print("=====================================")


var userInput:String

while gameLoop
{
    
    
    wordIncrement = Int.random(in: 0...12)
    //print("our random number is \(wordIncrement)")
    
    //I generate a random word by passing the wordIncrement random number
    //into the wordlist array
    
    print("The word is: \(ourWordList[wordIncrement])")
    print("=====================================")
    
    //Read user input
    userInput = readLine()!;
    
    if userInput == ourWordList[wordIncrement]{
        
        points = points + 1
        print("You earned a point | Total Points: \(points)")
        print("=====================================")
        
    }else if userInput == "Quit" {
        
        print("Good Bye.")
        print("Your total earned points: \(points)")
        print("=====================================")
        gameLoop = false
        
    }else{
        
        print("You did not earn a point")
        print("=====================================")
        
    }
    
    
    
}


