import Foundation

// Define a struct to represent a mentor
struct Mentor {
    let name: String
    let followerCount: Int
}

// Define a struct to represent a session
struct Session {
    let name: String
    let category: String
    let followerCount: Int
}

// Define the data model for the page
struct PageData {
    let socialMentors: [Mentor]
    let qSearchSessions: [Session]
    let mentors: [Mentor]
    let sessions: [Session]
    // Add more sections as needed
}

// Create instances of mentors
let socialMentor1 = Mentor(name: "Mark Jones", followerCount: 12900)
let socialMentor2 = Mentor(name: "Chris Ricky", followerCount: 11700)

// Create instances of sessions
let session1 = Session(name: "ENGLISH COACH", category: "ENGLISH COACH", followerCount: 10300)
let session2 = Session(name: "ENGLISH COACH", category: "ENGLISH COACH", followerCount: 9400)

// Create instances of mentors and sessions for other sections as needed

// Create an instance of the data model
let pageData = PageData(socialMentors: [socialMentor1, socialMentor2], qSearchSessions: [], mentors: [], sessions: [session1, session2])
