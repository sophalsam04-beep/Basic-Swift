import SwiftUI

struct ContentView : View {
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var showalert = false
    @State private var checked = false
    @State private var phone = false
    @State private var setting = false
    @State private var mul_buttons = false
    @State private var ch_buttons = false
    @State private var texts = ""
    var body: some View {
        
        // Showing alert message
        HStack{
            Button("Login"){
                showalert = true
            }
            .alert("Warning", isPresented: $showalert){
                Button("OK", role: .cancel){}
            }message: {
                Text("Something wrong message !")
            }
            Button("Check Info"){
                checked = true
            }
            .alert("Error Handling", isPresented: $checked){
                Button("OK", role: .confirm){}
            }message: {
                Text("Error! Cannot divide by zero !");
            }
            
            Button("Phone Number"){
                phone = true
            }.alert("Info Phone", isPresented: $phone){
                Button("OK !", role: .close){}
            }message: {
                Text("smart : 015975701")
                Text("Cellcard : 017907913")
            }
            
            Button("Setting"){
                setting = true
            }.alert("Setting", isPresented: $setting){
                Button("OK ! Please comfirm!", role: .confirm){}
            }message: {
                VStack{
                    Button("Sign Up"){}
                    Button("Logout"){}
                }
            }
            
        }
        
        HStack{
            // Alert with multiple Buttons
            Button("Alert Multiple Button"){
                mul_buttons = true
            }.alert("Multiple", isPresented: $mul_buttons){
                Button("Add"){}
                Button("View"){}
                Button("Update"){}
                Button("Search"){}
                Button("Delete"){}
                Button("Sort"){}
                
            }message: {
                Text("Showing Multiple Buttons")
            }
        }
        
        // Change message one to one
        VStack{
            Button("Change Message"){
                texts = "Welcome to Learning Swift Programing!";
                ch_buttons = true
            }.alert("Alert Now !", isPresented: $ch_buttons){
                Button("Change Now"){}
            }message: {
                Text("Change Succesfully!")
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
