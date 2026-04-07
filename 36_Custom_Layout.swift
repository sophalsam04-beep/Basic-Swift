// Custom Layout Alignment Guide

import SwiftUI

struct ContentView : View {
    var body: some View {
        // Custom Layout
        GeometryReader{
            geo in
            let width = geo.size.width / 3
            VStack(spacing : 25){
                ForEach(0..<5){
                    row in
                    HStack(spacing : 25){
                        ForEach(0..<5){
                            col in
                            Circle()
                                .fill(.blue)
                                .frame(width: width.binade,height: width.binade)
                            
                        }
                        
                    }
                    
                }
                
            }
            Text("Welcome to swift")
                .alignmentGuide(.leading) {d in d[.leading]}
            
        }
        
    }
}

#Preview {
    ContentView()
}
