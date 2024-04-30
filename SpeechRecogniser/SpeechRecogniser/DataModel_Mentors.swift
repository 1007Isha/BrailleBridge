import Foundation

// Define a struct to represent a mentor
struct Mentors {
    let name: String
    let followerCount: Int
    let description:String
    var experience:Int
    let designation:String
}

// Define a struct to represent a session
struct Sessions {
    let name: String
    let category: String
    let followerCount: Int
}

// Define the data model for the page
struct PageData {
    let socialMentors: [Mentors]
    let qSearchSessions: [Sessions]
    let mentors: [Mentor]
    let sessions: [Session]
    // Add more sections as needed
}

// Create instances of mentors
let socialMentor1 = Mentors(name: "Mark Jones", followerCount: 12900,description: "Being an english coach....",experience: 5,designation: "english Coach")
let socialMentor2 = Mentors(name: "Chris Ricky", followerCount: 11700,description: "Being an english coach....",experience: 5,designation: "english Coach")

// Create instances of sessions
let session1 = Sessions(name: "ENGLISH COACH", category: "ENGLISH COACH", followerCount: 10300)
let session2 = Sessions(name: "ENGLISH COACH", category: "ENGLISH COACH", followerCount: 9400)

// Create instances of mentors and sessions for other sections as needed

// Create an instance of the data model
//let pageData = PageData(socialMentors: [socialMentor1, socialMentor2], qSearchSessions: [], mentors: [], sessions: [session1, session2])
