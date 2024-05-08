import UIKit

var greeting = "Hello, playground"

func reverseSentenceMethod1(_ sentence: String) -> String {
    let words = sentence.components(separatedBy: " ")
    var result = ""
    var endWord: Int = words.count
    while endWord > 0 {
        result += words[endWord - 1]
        result += " "
        endWord = endWord - 1
    }
    return result.trimmingCharacters(in: .whitespacesAndNewlines)
}

func reverseSentenceMethod2(_ sentence: String) -> String {
    let words = sentence.components(separatedBy: " ")
    
    var reversedSentence:[String] = []
    for word in words {
        reversedSentence.insert(word, at: 0)
    }
    
    var result = ""
    for word in reversedSentence {
        result.append("\(word) ")
    }
    
    return result
}


//Method1
print(reverseSentenceMethod1("abbcc ccbba crecbba"))


//Method2
print(reverseSentenceMethod2("abbcc ccbba"))
