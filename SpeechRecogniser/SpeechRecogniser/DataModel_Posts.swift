import Foundation

// Define a struct to represent a post
struct Post {
    let title: String
    let content: String
    let author: String
    let timestamp: Date
    let category: String
    
    // Add any additional properties or methods as needed
}
// Create instances of posts
let post1 = Post(title: "Tenses Braille Paper", content: "These paper have tenses braille paper th...", author: "Pinterest", timestamp: Date(), category: "Today")
let post2 = Post(title: "A Heart Of Stone", content: "A Heart Of Stone is a story in which a ma...", author: "The City Of New York", timestamp: Date(), category: "Today")
let post3 = Post(title: "Grammer", content: "This sheet contains different types of to...", author: "GrammerCheck", timestamp: Date(), category: "Today")
let post4 = Post(title: "Paragraphs", content: "Paragraphs are group of many sentence...", author: "Home", timestamp: Date(), category: "Yesterday")

// Create an array to hold the posts
let posts: [Post] = [post1, post2, post3, post4]
