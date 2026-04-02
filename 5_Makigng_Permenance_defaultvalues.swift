// Making change Permenance with defaultValues
import SwiftUI

struct ContentView : View {
    // Mark : Persistent Storage -- save storage as variables
    @AppStorage("username") private var username : String = ""
    @AppStorage("islogged") private var islogged : Bool = false
    @AppStorage("isDarkmode") private var isDarkmode : Bool = false
    @State private var password : Int = 0
    var body: some View {
        //Making with permenance of Default values
        NavigationView{
            if islogged{
                HomeView(username : $username, islogged : $islogged, isDarkmode : $isDarkmode)
            }else{
                LoginView(username : $username, islogged : $islogged)
            }
        }.navigationTitle("Permenance with values")
        
         // Check if condiitonal is true will display condition 1 but if false it display condition 2
            .preferredColorScheme(isDarkmode ? .dark : .light)
    }
}


struct HomeView : View {
    // cannot used private
    @Binding var username : String
    @Binding var islogged : Bool
    @Binding var isDarkmode : Bool
    
    var body: some View {
        VStack{
            Text("Login form")
            TextField("Enter username :", text: $username);
            Button("Button Login"){
                if !username.isEmpty{
                    islogged = true
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            .foregroundStyle(.blue)
        }
    }
}

struct LoginView : View {
    @Binding var username : String
    @Binding var islogged : Bool
    var body: some View {
        VStack{
            Text("Login UI")
            TextField("Enter username :", text: $username).textFieldStyle(.roundedBorder).padding(.horizontal)
            Button("Login Now"){
                if !username.isEmpty{
                    islogged = true
                }
            }
            .padding()
            .background(.ultraThinMaterial)
            .foregroundStyle(.blue)
            .cornerRadius(30)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
