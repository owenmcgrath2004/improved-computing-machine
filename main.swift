func main() {
    if let setData: (name: String, description: String, className: String) = createSetData() {
        print("Set data created successfully!")
        print("Name: \(setData.name)")
        print("Description: \(setData.description)")
        print("Class: \(setData.className)")
        
        addSetQuestionsAndAnswers(setName: setData.name)
    } else {
        print("Failed to create set data.")
    }
}

// Call the main function
main()