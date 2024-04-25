import Foundation

// Represents a single note created by the user
struct Note {
    let content: String // The content of the note
    let timestamp: Date // The timestamp when the note was created
    // You can include additional metadata here, such as title, category, etc.
}

// Represents the collection of notes created by the user
struct NoteCollection {
    var notes: [Note] // Array of notes
}

