// using to Showing / Hiding view have animations and Disable in swiftUI

import SwiftUI

struct ContentView : View {
    // using @state into Hiding conditional
    @State private var isEmployees = false
    @State private var isStudents = false
    @State private var isSelected = false
    var body: some View {
        // Showing and Hiding views
        VStack(spacing : 25){
            // using to Toggle that showing | hiding
            // Using to Animation for showing as animations
            Button("Toggle Buttons Animations"){
                withAnimation{
                    isEmployees.toggle()
                }
            }
        // check conditional is true or false
            if isEmployees{
                Text("Hello! I''m Visible...!")
            }
            
            Button("Check animations"){
                withAnimation {
                    isStudents.toggle()
                }
                
               
            }
            if isStudents{
                Text("Welcome to Swift Programing...!")
            }
            
            // hiding with remove
            
            Button("View"){
                isSelected.toggle()
            }
            
            if isSelected{
                Text("Welcome to Flutter Apps").opacity(isSelected ? 1 : 0).disabled(!isSelected) // using Disable instead of Hide
            }
        }
    }
}

#Preview {
    ContentView()
}
