/*
Given the string, check if it is a palindrome.
Example
•	For inputString = "aabaa", the output should be
solution(inputString) = true;
•	For inputString = "abac", the output should be
solution(inputString) = false;
•	For inputString = "a", the output should be
solution(inputString) = true.
Input/Output
•	[execution time limit] 6 seconds (swift)
•	[input] string inputString
A non-empty string consisting of lowercase characters.
Guaranteed constraints:
1 ≤ inputString.length ≤ 105.
•	[output] boolean
true if inputString is a palindrome, false otherwise.
*/

func solution(inputString: String) -> Bool {
    let characters = Array(inputString.lowercased())
    var currentIndex = 0
    
    while currentIndex < characters.count / 2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
          
            return false
        }
        currentIndex = currentIndex + 1
    }
  
    return true
}

