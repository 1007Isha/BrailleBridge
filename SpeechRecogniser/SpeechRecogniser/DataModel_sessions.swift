import Foundation

// Define a struct to represent a mentor
struct Mentor {
    let name: String
    let followers: Int
    let sessions: [Session]
}

// Define a struct to represent a session
struct Session {
    let name: String
    let category: String
    let followers: Int
}

// Define the data model for the sessions
struct SessionData {
    let mentors: [Mentor]
}

// Create instances of sessions for different mentors
let sessionsForMarkJones = [
    Session(name: "English Grammar Basics", category: "English", followers: 1000),
    Session(name: "Advanced Mathematics Concepts", category: "Mathematics", followers: 800),
    Session(name: "Introduction to Science", category: "Science", followers: 1200)
]

let sessionsForChrisRicky = [
    Session(name: "Public Speaking Mastery", category: "Communication", followers: 1500),
    Session(name: "Art of Negotiation", category: "Business", followers: 1100),
    Session(name: "Programming Fundamentals", category: "Computer Science", followers: 900)
]

// Create instances of mentors with their sessions
let markJones = Mentor(name: "Mark Jones", followers: 15000, sessions: sessionsForMarkJones)
let chrisRicky = Mentor(name: "Chris Ricky", followers: 12000, sessions: sessionsForChrisRicky)

// Create an instance of the data model
let sessionData = SessionData(mentors: [markJones, chrisRicky])
