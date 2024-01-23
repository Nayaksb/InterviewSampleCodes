import UIKit
//Given a one-dimensional array representing a single lane with vehicles moving in either directions, write a function to determine how many pairs of vehicles are moving towards each other.
//Input: [>, <, <, >, >] Output: 2
//Input: [>, <, >, >, <] Output: 4


var passingCarCase1 = [">", "<", "<", ">", ">"]
print(passingCarstoN(drivingCars: passingCarCase1))

var passingCarCase2 = [">", "<", ">", ">", "<"]
print(passingCarstoN(drivingCars: passingCarCase2))

func passingCarstoN(drivingCars: [String]) -> Int{
    var passingCars = 0
    let numOfCars = drivingCars.count
    
    for i in 0..<numOfCars {
        if drivingCars[i] == ">" {
            for j in i..<numOfCars {
                if drivingCars[j] == "<"{
                    passingCars = passingCars + 1
                }
            }
        }
    }
    return passingCars
}
