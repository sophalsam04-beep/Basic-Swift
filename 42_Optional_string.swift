import SwiftUI

struct AlertMessage : Identifiable{
    let id = UUID()
    let text : String
    
    init(text: String) {
        self.text = text
    }
}

struct AlertText : Identifiable{
    let id = UUID()
    let SMS  : String
    
    init(SMS: String) {
        self.SMS = SMS
    }
}


struct alertmessagee : Identifiable{
    let id = UUID()
    let txt : String
    
    init(txt: String) {
        self.txt = txt
    }
}
struct ContentView : View {
    @State private var alertMessage : String? // Otional string
    @State private var alertSMS : String? // optional string
    @State private var alert : alertmessagee?
    
    
    var ischecking : Binding<Bool>{
        Binding(
            get: {alert != nil},
            set: {if !$0 {alert != nil}}
            )
    }
    var showingalerts : Binding<Bool>{
        Binding(
            get: { alertSMS != nil },
            set: { if !$0 {alertSMS != nil }},
            )
    }
    
    var isshowingAlert : Binding<Bool>{
        Binding(
            get: { alertMessage != nil},
            set: { if !$0 { alertMessage != nil}}
            
)
    }
    var body: some View {
        // Binding to Alert message to Optionl string
        Button("Show Alert"){
            alertMessage = "Network Error...!";
        }.alert("Error", isPresented: isshowingAlert){
            Button("OK", role: .cancel){}
            
        }message: {
            Text(alertMessage ?? " ")
        }
        
        VStack(spacing : 25){
            Button("Otional string Buttons", role: .confirm){
                alertSMS = "Internet insufficient...!";
            }.alert("Error...!", isPresented: showingalerts){
                Button("OK!", role: .close){}
            }message: {
                    Text(alertSMS ?? "")
            }
        }
        
        VStack(spacing :25){
            Button("Optional string", role: .destructive){
                alert = alertmessagee(txt: "Something wrong error...!")
            }.alert(item : $alert){ m in
                Alert(
                    title: Text("Optional string checked!"),
                    message: Text("Verifying the message...!"),
                    dismissButton: .default(Text("Ok!"))
                )
            }

        }
    }
}

#Preview {
    ContentView()
}
