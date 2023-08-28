import UIKit

//Declare the array having duplicate values
var mainArray = [1, 4, 7, 4, 5, 11, 7, 11]

//The function to find and create new array having unique values
func findUniqueValues(arr: [Int]) -> [Int]{
    
    //Empty array to store unique values
    var uniqueValues: [Int] = []
    
    //Run the loop to find uniques
    for i in 0..<arr.count {
        //Add the values if not available in 'uniqueValues' array
        if !uniqueValues.contains(arr[i]){
            uniqueValues.append(arr[i])
            
        }else{
            print("Duplicate Value: - \(arr[i])")
        }
            
    }
    return uniqueValues
}

//Call the function and print
print("Unique Array - \(findUniqueValues(arr: mainArray))")


