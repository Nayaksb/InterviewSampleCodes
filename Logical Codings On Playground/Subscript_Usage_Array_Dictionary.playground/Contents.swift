import UIKit

struct TimeTable{
    var multiple: Int
    subscript(index: Int) -> Int{
        get{
        print("Called 1")
        return multiple * index
        }
        set{
            print("Called 2")

            multiple = newValue
        }
    }
}

let timetable = TimeTable(multiple: 3)
print("Current Time - \(timetable[3])")
