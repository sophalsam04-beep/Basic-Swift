import SwiftUI

struct ContentView : View {
    @State private var timeRemaining = 200
    @State private var timer : Timer? = nil
    
    @State private var timeIncrement = 100
    @State private var time : Timer? = nil
    
    
    func startTimer(){
        stopTimer()
        
        if timeRemaining > 0{
            timeRemaining -= 1
        }else{
            stopTimer()
        }
    }
    func stopTimer(){
        timer?.invalidate()
        timer = nil
    }
    
    func startedTimer(){
        stopedTimer()
        
        if timeIncrement > 0{
            timeIncrement += 1
        }else{
            stopedTimer()
        }
    }
    
    func stopedTimer(){
        time?.invalidate()
        time = nil
    }
    var body: some View {
        // Countdown Timer with values
        // Decrement Timer
        VStack(spacing :25){
            Text("Time Remaining : \(timeRemaining)")
            Button("Start"){
                startTimer()
            }
            
            Button("Stop"){
                stopTimer()
            }
        }
        
        
        // Increment Timer
        Text("Time Increment : \(timeIncrement)")
        Button("Start"){
            startedTimer()
        }
        Button("Stop"){
            stopedTimer()
        }
        .preferredColorScheme(ColorScheme.dark)
    }
}

#Preview {
    ContentView()
}
