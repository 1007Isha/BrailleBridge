import Foundation

// Enum to represent different communication categories
enum CommunicationCategory: String, CaseIterable {
    case english = "English"
    case hindi = "Hindi"
    case mathematics = "Mathematics"
    case science = "Science"
    case greetings = "Greetings"
    case numbers = "Numbers"
    case colors = "Colors"
    case animals = "Animals"
    // Add more categories as needed
    
    // Computed property to get the localized display name of the category
    var displayName: String {
        switch self {
        case .english:
            return NSLocalizedString("English", comment: "")
        case .hindi:
            return NSLocalizedString("Hindi", comment: "")
        case .mathematics:
            return NSLocalizedString("Mathematics", comment: "")
        case .science:
            return NSLocalizedString("Science", comment: "")
        case .greetings:
            return NSLocalizedString("Greetings", comment: "")
        case .numbers:
            return NSLocalizedString("Numbers", comment: "")
        case .colors:
            return NSLocalizedString("Colors", comment: "")
        case .animals:
            return NSLocalizedString("Animals", comment: "")
        // Add more cases as needed
        }
    }
    
    // Static method to get all categories
    static var allCategories: [CommunicationCategory] {
        return CommunicationCategory.allCases
    }
}
