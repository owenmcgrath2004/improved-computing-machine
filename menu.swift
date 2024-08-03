import Foundation

func checkForDirectory() -> String? 
{
    print("Is this your first time using Swiftlet? (Y/N)")

    if let response = readLine()?.uppercased() 
    {
        if response == "Y" 
        {
            print("Please paste the full file path for where you want to store your sets:")
            if let filePath: String = readLine(), !filePath.isEmpty 
            {
                let fileManager: FileManager = FileManager.default
                do 
                {
                    try fileManager.createDirectory(atPath: filePath, withIntermediateDirectories: true, attributes: nil)
                    print("Directory created at path: \(filePath)")
                    return filePath
                } 
                catch 
                {
                    print("Error creating directory: \(error.localizedDescription)")
                }
            } 
            else 
            {
                print("No file path provided.")
            }
        } 
        else 
        {
            print("Welcome back to Swiftlet!")
            print("Please paste the full file path for where your sets are stored:")
            if let filePath: String = readLine(), !filePath.isEmpty 
            {
                return filePath
            } 
            else 
            {
                print("No file path provided.")
            }
        }
    } 
    else 
    {
        print("No response provided.")
    }
    return nil
}