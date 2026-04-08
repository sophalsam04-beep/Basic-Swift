import SwiftUI

struct ContentView : View {
    var isLogged : Bool = false
    var body: some View {
        // Using Group as Transparents container
        ScrollView {
            Group {
                if !isLogged{
                    Text("Welcome to page")
                }else{
                    Text("Welcome back")
                }
                
            }
            ScrollView {
                Section(header: Text("Group")){
                    Group {
                        Text("Employee A")
                        Text("Employee B")
                        Text("Employee C")
                        Text("Employee D")
                        Text("Employee E")
                        Text("Employee F")
                        Text("Employee G")
                        Text("Employee H")
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}

