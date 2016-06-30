import Foundation

var aString = "this string has 29 characters"
var reverse = ""

for character in aString.characters {
    var asString = "\(character)"
    //Include example of mirror Struct here
    reverse = asString + reverse
}

print(reverse)

//func reverseString (str: String) -> (String) {
//
//    //first create an empty string. Remember you need a place to put the new characters
//    var arrayForChar = [Character]()
//    var finalString = ""
//
//    for char in str.characters {
//        arrayForChar.append(char)
//        for i in 0...arrayForChar.count {
//            finalString.append(contentsOf: arrayForChar[i])
//            //Some might want to append here--resist that urge. You need to Concatenate.
//            finalString += String(arrayForChar)
//        }
//    }
//    return finalString
//}
//
//reverseString(str: "peter")




