import SwiftUI
internal import Combine

struct ContentView : View {
    @State private var timeRemaining = 10
    @State private var isRunning = false
    @State private var setTimeRemaining = 20
    @State private var isselected = false
    
    let time = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        // Timer Counting Down
        VStack(spacing: 25){
            Text("Time Remaining : \(timeRemaining)").font(.largeTitle)
            
            Button(isRunning ? "Pause" : "Start"){
                isRunning.toggle()
            }
        }
        .onReceive(timer){ _ in
            guard isRunning else {return}
            
            if timeRemaining > 0{
                timeRemaining -= 1
            }
        }
        Button("Reset Buttons"){
            timeRemaining = 20
            isRunning = false
        }
        
        Button("Updated Button"){
            timeRemaining  = 50
            isRunning = false
        }
        
        VStack(spacing : 25){
            Text("Set TimeRemaining : \(setTimeRemaining)").font(.largeTitle)
            
            Button(isselected ? "Continue" : "Stop"){
                isselected.toggle()
            }
        }
        .onReceive(time){ _ in guard
            isselected else { return }
            
            if setTimeRemaining > 0{
                setTimeRemaining += 1
            }
        }
        
        Button("Reset Buttons"){
            setTimeRemaining = 40
            isselected = false
        }
    }
}

#Preview {
    ContentView()
}
