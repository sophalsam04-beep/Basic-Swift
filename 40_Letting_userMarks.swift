import SwiftUI
internal import Combine
struct ContentView : View {
    struct Item : Identifiable{
        let id = UUID()
        let name  : String
        var isFavorite : Bool
        
        init(name: String, isFavorite: Bool) {
            self.name = name
            self.isFavorite = isFavorite
        }
    }
    
    @State private var items : [Item] = [
        Item(name: "Flutter", isFavorite: false),
        Item(name: "Swift", isFavorite: false),
        Item(name: "Kotlin", isFavorite: false),
        Item(name: "Java", isFavorite: false),
        Item(name: "Objective C", isFavorite: false),
        Item(name: "React Native", isFavorite: false),
        Item(name: "Python", isFavorite: false),
        Item(name: "C#", isFavorite: true)
    ];
    var body: some View {
        NavigationView {
            List {
                ForEach(items.indices, id: \.self){
                    indec in
                    HStack{
                        Text(items[indec].name)
                        
                        Spacer()
                        
                        Button {
                            withAnimation {
                                items[indec].isFavorite.toggle()
                            }
                        }label: {
                            Image(systemName: items[indec].isFavorite ? "heart.fill" : "heart")
                        }
                        
                        Button {
                            withAnimation {
                                items[indec].isFavorite.toggle()
                            }
                        }label: {
                            Image(systemName: items[indec].isFavorite ? "person.3.fill" : "person")
                        }
                    }
                }
            }
        }.navigationTitle("User marks")
    }
}

#Preview {
    ContentView()
}
