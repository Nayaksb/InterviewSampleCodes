import UIKit

//Given  Array of string type
let stringArray = ["Ox", "Cow", "Bee", "Cow", "Ox", "Cat"]

//The function to find and create new array having unique values
func findCommonVals(arr: [String]) -> ([String],[String]){
    
    //Empty array to store unique values
    var uniqueValues: [String] = []
    var duplicateValues: [String] = []
    //Run the loop to find uniques
    for i in 0..<arr.count {
        //Add the values if not available in 'uniqueValues' array
        if !uniqueValues.contains(arr[i]){
            uniqueValues.append(arr[i])
            
        }else{
            duplicateValues.append(arr[i])
        }
            
    }
    return (duplicateValues, uniqueValues)
}

//Call the function and print
print("Common & All Unique(Remove Duplicate) Values - \(findCommonVals(arr: stringArray))")

print("Approuch 1 \(commonElementsInArray(stringArray: stringArray).keys)")
  
print("Approuch 2 using reduce method - \(commonElementsInArrayUsingReduce(stringArray: stringArray).keys)")
 
//Approach 1
 func commonElementsInArray(stringArray: [String]) -> [String : Int] {
     var commonValues = [String : Int]()
     let dict = Dictionary(grouping: stringArray, by: {$0})
     let newDict = dict.mapValues({$0.count})
     commonValues = newDict.filter({ $0.value > 1})
     
     return commonValues
 }

 //Approach 2
 func commonElementsInArrayUsingReduce(stringArray: [String]) -> [String : Int] {
     var commonValues = [String : Int]()
     let stringArray = stringArray.reduce(into: [:]) { (counts, strings) in
         counts[strings, default: 0] += 1
     }
     commonValues = stringArray.filter({ $0.value > 1})
     
     return commonValues
 }
