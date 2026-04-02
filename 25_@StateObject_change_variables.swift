// @StateObject For Change the all variables

import SwiftUI
internal import Combine
class User : ObservableObject{
    @Published var name : String = "Sam"
}

struct ContentView : View {
    // can change used : @Stateobject
    @StateObject private var user = User()
    var body: some View {
        VStack{
         Text("using @Stateobject to chnage the text -> alot of previous!")
            Text(user.name).font(.largeTitle);
            Button("Change Name!"){
                user.name = "SeakLim"; // change succsfully!
            }
        }
        .padding()
        .cornerRadius(30)
        .background(.ultraThickMaterial)
    }
}


#Preview {
    ContentView()
}
