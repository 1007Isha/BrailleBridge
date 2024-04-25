import Foundation

// Define an enum to represent the classes from 5 to 10
enum SchoolClass: Int, CaseIterable {
    case class5 = 5
    case class6
    case class7
    case class8
    case class9
    case class10
    
    // Computed property to get the class name as a String
    var className: String {
        return "Class \(self.rawValue)"
    }
}
