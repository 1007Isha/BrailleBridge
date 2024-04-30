import Foundation

// Define an enum to represent the classes from 5 to 10
enum SchoolClass: Int, CaseIterable {
    case class1 = 1
    case class2
    case class3
    case class4
    case class5
    case class6
    
    // Computed property to get the class name as a String
    var className: String {
        return "Class \(self.rawValue)"
    }
}
