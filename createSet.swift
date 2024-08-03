import Foundation

func createSetData() -> (name: String, description: String, className: String)? 
{
  // Name of the set
  print("Set Name: ")
  guard let setName: String = readLine(), !setName.isEmpty else 
  {
      print("No input provided.")
      return nil
  }

  // Short description of the set
  print("Set Description: ")
  guard let setDescription: String = readLine(), !setDescription.isEmpty else 
  {
      print("No input provided.")
      return nil
  }

  // The class that the set belongs to
  print("Set Class: ")
  guard let setClass: String = readLine(), !setClass.isEmpty else 
  {
      print("No input provided.")
      return nil
  }
  
  //the date that the set was created
  print("Set Date: ")
  guard let setDate: String = readLine(), !setDate.isEmpty else
  {
    print ("No input provided.")
    return nil
  }
  
  return (name: setName, description: setDescription, className: setClass)
}

func addSetQuestionsAndAnswers(setName: String)
{
  print("You are now adding questions and answers for \(setName)")
  print("If you would like to save your work, type 'save' into the question prompt.")
  print("If you would like to delete your work, type 'exit' into the question prompt.")

  var questionNumber: Int = 0

  struct setQuestions
  {
    var question: String
    var answer: String
  }

  var setQuestionsDictionary: [Int: setQuestions] = [:]

  while true
  {
    print("Question: ")
    guard let question: String = readLine(), !question.isEmpty else
    {
      print("No input provided.")
      continue
    }

    if question.lowercased() == "save"
    {
      print("Saving your work!")
      break
    }
    else if question.lowercased() == "exit"
    {
      print("Exiting without saving!")
      return
    }

    print("Answer: ")
    guard let answer: String = readLine(), !answer.isEmpty else
    {
      print("No input provided.")
      continue
    }

    setQuestionsDictionary[questionNumber] = setQuestions(question: question, answer: answer)
    questionNumber += 1
  }

  //TODO: Move this to its own function.
  print("\nAll questions and answers for \(setName):")
    for (number, setQuestion) in setQuestionsDictionary {
        print("Q\(number + 1): \(setQuestion.question)")
        print("A: \(setQuestion.answer)\n")
    }
}