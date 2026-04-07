// 3D Card with Rotation scrolling
import SwiftUI

struct ContentView : View {
    var body: some View {
        // card Rotation with effect
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing : 40){
                ForEach(0..<20){
                    i in
                    GeometryReader {
                        geo in
                        let y = geo.frame(in: .global).minY
                        let screenHeight = UIScreen.main.bounds.height
                        let rotation = Angle(degrees: Double(y - screenHeight / 2) / 10)
                        
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.orange)
                            .frame(height: 300)
                            .rotation3DEffect(rotation, axis: (x : 0,y : 5,z:0), perspective: 0.7)
                        
                            .shadow(radius: 5)
                    }
                    .frame(height : 300)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
