import SwiftUI
internal import Combine


class User : ObservableObject{
    @Published var name : String = "Un virak"
    @Published var role : String = "Information Technology"
    @Published var score : Int = 92
    @State private var id : Int = 0
    @State private var names : String = "Sam Sophal"
    @State private var roles : String = "Mobile App development"
    @State private var isstudent : Bool = false
    @State private var arr : [Int] = [1,424,544,34,34334,434,343,43,54]
}
struct ContentView : View {
    @StateObject private var user = User()
    var body: some View {
        // Sharing preference observer with default
        
        VStack{
            Text("Sharing Observer with new values")
            Text("Result : \(user.name)" )
            Button("Button Login"){
                user.name = "Seaklim";
            }
            Text("Result : \(user.role)")
            Button("Button Login"){
                user.role = "Computer Science";
            }
            
            Text("Result : \(user.score)");
            Button("Button Check score"){
                user.score = 95;
            }
        }
        // varialbe
        VStack(){} // vertical stack
        HStack(){} // horizontal stack
        ZStack(){} // overlay stack
        
    }
}


#Preview {
    ContentView()
}
