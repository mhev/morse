//
//  morse.swift
//  
//
//  Created by Michael Heverly on 3/29/24.
//

import Foundation

var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫

var letterToMorse = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--.."
]

var morseText = ""

for element in englishText{
  if let morseChar = letterToMorse["\(element)"]{
    morseText += morseChar + " "
  } else{
    morseText += "   "
  }
}
print(morseText)

var decodedMessage = ""
var morseCodeArray = [String]()
var currMorse = ""

for char in secretMessage{
  if char != " " {
    currMorse.append(char)
  }else{
    switch currMorse {
  case "":
    currMorse += " "
  case " ":
    morseCodeArray.append(" ")
    currMorse = ""
  default:
    morseCodeArray.append(currMorse)
    currMorse = ""
}
  }
}
morseCodeArray.append(currMorse)
print(morseCodeArray)

var morseToLetter: [String: String] = [:]

for (letter, morseChar) in letterToMorse {
    morseToLetter[morseChar] = letter
}

for morseValue in morseCodeArray {
    if let letterChar = morseToLetter[morseValue] {
        decodedMessage += letterChar  // Append the translated letter to decodedMessage
    } else {
        decodedMessage += " "  // Append a space to decodedMessage if morseValue is not found
    }
}
print(decodedMessage)





