// Review --> using @StateObject and Published State to change variable as value -> text
import SwiftUI
internal import Combine

class User : ObservableObject{
    @Published var name : String = "Sam"
    @Published var role : String = "Information Technology"
    
    @Published var arr : [Int] = [1,2,3,4,5,6,100,1404];
    
    @Published var list : [Double] = [33.2,44.2,44444.34534,43.5,34.3,44.3,4.4]
    
    @Published var str : [String] = ["Mobile Apps development","Web development","Graphic Designer","Networking&Engineering","Version Control [Github + GitLab]"];
    
}
struct ContentView : View {
    @StateObject private var user = User()
    @StateObject private var user_1 = User()
    @StateObject private var user_2 = User()
    @StateObject private var user_3 = User()
    @StateObject private var user_4 = User()
    @StateObject private var user_5 = User()
    var body: some View {
        VStack(spacing : 25){
            Text(user.name).font(.largeTitle).padding()
            
            Button("Button Change"){
                user.name = "Un virak";
            }
            VStack{
                Text(user_1.role).font(.subheadline).padding()
                Button("Change Role : "){
                    user_1.role = "Mobile Apps development";
                }
            }
            VStack{
                Text(user_3.arr.map {String($0)}.joined(separator: ", ")).font(.subheadline).padding()
                Button("Changing Array of element : "){
                    user_3.arr = [100,424,343,5,35,2222,5434]
                }
            }
            
            VStack{
                Text(user_4.list.map {String($0)}.joined(separator: ", ")).font(.subheadline).padding()
                Button("Changing List :"){
                    user_4.list = [10000,44.4,4.3,453.3,4.55,43.45];
                }
            }
            
            VStack{
                Text(user_5.str.map {String($0)}.joined(separator: ", ")).font(.subheadline).padding()
                Button("Changing Str "){
                    user_5.str = ["Sale&Marketing","Digital Marketing","Sale Outdoor","General manager","Flutter developer"];
                }
            }

        }
    }
}


#Preview {
    ContentView()
}
