/*
Given an array of integers, find the pair of adjacent elements that has the largest product and return that product.
Example
For inputArray = [3, 6, -2, -5, 7, 3], the output should be
solution(inputArray) = 21.
7 and 3 produce the largest product.
Input/Output
•	[execution time limit] 6 seconds (swift)
•	[input] array.integer inputArray
An array of integers containing at least two elements.
Guaranteed constraints:
2 ≤ inputArray.length ≤ 10,
-1000 ≤ inputArray[i] ≤ 1000.
•	[output] integer
The largest product of adjacent elements.
*/

func solution(inputArray: [Int]) -> Int {
    if inputArray.count < 2 {
        return 0
    }
    
    if inputArray.count == 2 {
        return inputArray[0] * inputArray[1]
    }
    
    var productInput = -999  
    
    for i in 0..<inputArray.count - 1 {
        if (inputArray[i] * inputArray[i+1] > productInput) {
            productInput = inputArray[i] * inputArray[i+1]
        }
    }
        
    return productInput
}
