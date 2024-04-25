import Foundation

// Represents the evaluation data from the speech-to-text process
struct SpeechToTextEvaluation {
    let marks: Int
    let timeSpent: TimeInterval // Represents time in seconds
    let rank: Int
}

// Represents the evaluation data from the extracted text of the Braille paper
struct BraillePaperEvaluation {
    let marks: Int
    let timeSpent: TimeInterval // Represents time in seconds
    let rank: Int
}

// Represents the combined evaluation result, including marks, time spent, and rank
struct EvaluationResult {
    let speechToTextEvaluation: SpeechToTextEvaluation
    let braillePaperEvaluation: BraillePaperEvaluation
}

// Example usage:
let speechToTextData = SpeechToTextEvaluation(marks: 85, timeSpent: 1200, rank: 3)
let braillePaperData = BraillePaperEvaluation(marks: 90, timeSpent: 1500, rank: 2)

let evaluationResult = EvaluationResult(speechToTextEvaluation: speechToTextData, braillePaperEvaluation: braillePaperData)

