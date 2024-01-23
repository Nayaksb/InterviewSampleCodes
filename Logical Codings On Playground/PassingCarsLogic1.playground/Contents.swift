import UIKit
//Given a one-dimensional array representing a single lane with vehicles moving in either directions, write a function to determine how many pairs of vehicles are moving towards each other.
//Input: [>, <, <, >, >] Output: 2
//Input: [>, <, >, >, <] Output: 4


var passingCarCase1 = [">", "<", "<", ">", ">"]
print(movingVehicles(drivingCars: passingCarCase1))

var passingCarCase2 = [">", "<", ">", ">", "<"]
print(movingVehicles(drivingCars: passingCarCase2))

func movingVehicles(drivingCars: [String]) -> Int{
    if drivingCars.isEmpty {
        return 0
    }
    var rightFacing = 0
    var passingCar = 0
    
    for car in drivingCars {
        if car == ">" {
            rightFacing = rightFacing + 1
        }else{
            passingCar = passingCar + rightFacing
        }
    }
    
    return passingCar
}

