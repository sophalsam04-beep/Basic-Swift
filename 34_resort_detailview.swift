// Create a Detailview for a resort
import SwiftUI


// Model varialble
struct Resort : Identifiable{
    let id  = UUID()
    let name : String
    let country: String
    let imageNmae : String
    let description : String
    let size : String
    let price : String
    let facilite : [String]
}

// Sample data
let sampleResort = Resort(
    name: "Un virak",
    country: "Phnom Penh",
    imageNmae: "Football club",
    description : "The fun of happy...",
    size: "large",
    price: "$$$$",
    facilite: ["Basketball","Volleyball","Tennis","Soccer"]
)
struct ContentView : View {
    let resort : Resort
    var body: some View {
        // Create a detail views
        ScrollView{
            VStack(alignment: .leading, spacing: 25){
                Image(resort.imageNmae)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                VStack(alignment: .leading, spacing: 25){
                    Text(resort.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(resort.country)
                        .font(.title)
                        .fontWeight(.bold)
                }
                Divider()
                HStack{
                    Label(resort.size, systemImage: "square.grid.2x2")
                    Spacer()
                    Label(resort.price, systemImage: "dollarsign.circle")
                }.font(.headline)
                
                Text(resort.description)
                    .font(.body)
                
                Divider()
                
                VStack(alignment: .leading, spacing: 25){
                    Text("Facilitate")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        ForEach(resort.facilite, id: \.self){
                            facilitate in
                            VStack{
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                    .foregroundColor(.blue)
                                Text(facilitate)
                                    .font(.caption)
                            }
                            .frame(maxWidth : .infinity)
                        }
                    }
                }
            }
        }
        .navigationTitle(resort.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

#Preview {
    ContentView(resort: sampleResort)
}
