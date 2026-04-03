import SwiftUI

struct ContentView : View {
    @State private var offset = CGSize.zero
    var body: some View {
        // Drag to gesture
        Circle()
            .frame(width: 150,height: 150)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged{
                        value in offset = value.translation
                    }
                    .onEnded{
                        _ in offset = .zero
                    }
            )
        
        Rectangle()
            .frame(width: 120,height: 120)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged{
                        value in offset = value.translation
                    }
                    .onEnded{
                        _ in offset = .zero
                    }
            )
    }
}

#Preview {
    ContentView()
}
