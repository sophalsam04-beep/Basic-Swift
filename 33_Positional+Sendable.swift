import SwiftUI

struct ContentView : View {
    
    @State private var user : User?
    var body: some View {
        // Review : Tabviews in swift
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Telegram")
                    
                }
            ListView()
                .tabItem{
                    Image(systemName: "bell.fill")
                    Text("Apps")
                }
            GView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
        HView()
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Heart")
                }
        }
        Text(user?.name ?? "Loading....")
            .task {
                user = await fetchUser()
            }
        
        Text(user?.department ?? "Mobile App development")
            .task {
                user = await fetchData()
            }
        
        
        // Absolute and Positional in swiftUI
       
    }
}

struct HomeView : View {
    @State private var isDarkmode : Bool = true
    var body: some View {
        Form {
            Toggle("is Dark", isOn: $isDarkmode)
            Toggle("Java", isOn: $isDarkmode)
            Toggle("Flutter", isOn: $isDarkmode)
            Toggle("React Native", isOn: $isDarkmode)
            Toggle("Swift", isOn: $isDarkmode)
            Toggle("Objective C", isOn: $isDarkmode)
            Toggle("UX/UI Designer", isOn: $isDarkmode)
            Toggle("IT Specialist", isOn: $isDarkmode)
            Toggle("IT Networking", isOn: $isDarkmode)
            Toggle("Kotlin", isOn: $isDarkmode)
            
        }
    }
}

struct ListView : View {
    @State private var role = ["NU","RUPP","UHS","NUM","UC","CAM"];
    @State private var choose = "Mon";
    let weeks = ["Mon","Tue","Wed","Thr","Fri","Sat","Sun"];
    @State private var c = "Address";
    let s = ["Address","Phone","ID","Name","Role","Options"];
    var body: some View {
        NavigationStack{
            Picker("Selection option!", selection: $choose){
                ForEach(weeks, id: \.self){ item in
                    Text(item)
                }
            }
            VStack(spacing : 25){
                Picker("Select", selection: $c){
                    ForEach(s, id: \.self){
                        h in Text(h)
                    }
                }
            }
            Text("Mobile App development")
                .background(.white)
                .position(x : 100, y: 100)
                .background(.red)
            
            Text("Graphic designer")
                .background(.white)
                .offset(x : 500, y  : 500)
            
            Text("Find Weight ")
                .background(.red)
                .position(x : UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2);
            
                
            
        }.navigationTitle("ListView")
           
    }
}

struct GView : View {
    @State private var name = "SeakLim";
    @State private var role = "Web development";
    @State private var a = ["A","B","C","D","E","F","G"];
    var body: some View {
        NavigationStack{
            VStack{
                Text("result : \(name)")
                Button("Change name "){
                    name = "Sophal";
                }
                Text("Changing Name : \(name)")
                VStack{
                    Text("Result : \(role)")
                    Button("Changing Role "){
                        role = "Mobile Apps development";
                    }
                    Text("Changing Role :\(role)")
                }
                
                VStack{
                    // segmented of control is picker
                    Picker("Select Option", selection: $a){
                        Text("A").tag("A")
                        Text("B").tag("B")
                        Text("C").tag("C")
                    }
                    .pickerStyle(.menu)
                    
                }
            }
        }
    }
}

struct HView : View {
    var body: some View {
        // using to Sendale in swift
        
        @State var selectedDate = Date()
        @State var select = Date()
        NavigationStack{
            NavigationStack{
                // Date --> covert date to string
                DatePicker("selected Date", selection: $selectedDate)
                DatePicker("Selected Time", selection: $select)
            }
        }
    }
}


// Sendable here
struct User : Sendable{
    let name : String
    let department : String
}

// Sendable with async
func fetchUser() async -> User{
    return User(name: "Un virak", department: "Java Programing")
}

func fetchData() async -> User{
    try? await Task.sleep(nanoseconds: 1000000000000)
    return User(name: "Mithona Chan", department: "IT Software")
}





#Preview {
    ContentView()
}
