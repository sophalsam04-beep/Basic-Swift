import SwiftUI

struct ContentView : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing : 25){
                ForEach(0..<30){
                    i in
                    GeometryReader {
                        geo in
                        let y = geo.frame(in: .global).minY
                        let screenHeight = UIScreen.main.bounds.height
                        let rotation = Angle(degrees: Double(y - screenHeight / 2) / 10)
                        
                        AngularGradient(colors: [.blue,.red,.orange,.green], center: .center, startAngle: .degrees(300), endAngle: .degrees(500))
                            .frame(height : 300)
                            .rotation3DEffect(rotation, axis: (x : 0, y :5,z : 0))
                    }
                    .frame(height: 250)
                    .padding()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
