import SwiftUI

struct ContentView : View {
    @State private var isOn = false
    var body: some View {
        GeometryReader{
            geo in
            VStack{
                Text("Positon")
                    .onAppear {
                        print(geo.frame(in: .local))
                    }
            }
        }
    
        GeometryReader{
            geoss in
            Text("Position")
                .onAppear {
                    print(geoss.frame(in: .local))
                }
        }
        GeometryReader{
            geo in
            Toggle("Power!", isOn: $isOn)
            
        }
        GeometryReader{
            geo in
            Toggle("Power!", isOn: $isOn)
            
        }
        
        GeometryReader{
            geosss in
            Color.blue
            
        }
        GeometryReader{
            geosss in
            Color.red
            
        }
        
        Section(header: Text("Logout")){
            Form {
                ScrollView{
                    HStack{
                        Text("Flutter")
                        Text("Swift")
                        Text("Github")
                        Text("React native")
                    }
                }
                ScrollView{
                    HStack{
                        Text("Java")
                        Text("Python")
                        Text("C#")
                        Text("Objective C")
                    }
                }
                ScrollView{
                    HStack{
                        Text("Sophal")
                        Text("virak")
                        Text("Mithona")
                        Text("Mithona")
                    }
                }

            }
            
        }
        
        Section(header: Text("Footer")){
            Form{
                ScrollView{
                    HStack{
                        GeometryReader{
                            g in
                            Text("Github Account Signup")
                                .frame(width: g.size.width * 0.8,height: g.size.height * 0.8)
                                .scaledToFit()
                        }
                    }
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
