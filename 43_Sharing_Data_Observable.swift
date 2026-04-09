// Sharing Observable with Data sharing!!
import SwiftUI
import Observation



// Share state
// Create state for variable
@Observable
class AppState {
    var useranme : String = "Guest";
    var islogged : Bool = false
}


@main
struct MyApp : App{
    var appState = AppState()
    var body : some Scene{
        WindowGroup {
            NavigationStack{
                ContentView()
            }
            .environment(appState)
        }
    }
}

struct ContentView : View {
    @Environment(AppState.self) var appState

    var body: some View {
        VStack{
            Text("Hello\(appState.useranme)")
            Text(appState.islogged ? "Data logged!" : "Data is not logged!")
            
            Button("Logged ? "){
                appState.islogged.toggle()
            }
            
            NavigationLink("Go to page"){
                ProfileView()
            }
        }.padding()
    }
}

struct ProfileView : View {
    @Environment(AppState.self) var appState
    @Bindable var bindaleAppState : AppState
    
    init(){
        _bindaleAppState = Bindable(wrappedValue: AppState())
    }
    var body: some View {
        Text("Username")
        TextField("Enter username :", text: $bindaleAppState.useranme)
    }
}

#Preview {
    ContentView()
        .environment(AppState())
}
