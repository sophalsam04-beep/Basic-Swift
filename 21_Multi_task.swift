import Foundation

func loadMultipleTask() async{
    await withTaskGroup(of: Int.self){
        group in group.addTask { return 1 }
        group.addTask { return 2 }
        group.addTask { return 3 }
        group.addTask { return 4 }
        group.addTask { return 5 }
        
        
        for await result in group{
            print(result)
        }
    }
}

actor Counter{
    var number = 0;
    
    func increment(){
        number += 1
    }
    func decrement(){
        number -= 1
    }
}


@MainActor
func updateUI(){
    print("Update UI Safe!")
}

// GCD --> Grand Central Dispath
DispatchQueue.global().async {
    print("Background working !");
}
DispatchQueue.main.async {
    print("Main UI Thread !");
}

// Call API
// Heavy computation
// File processing
DispatchQueue.global().async {
    print("Task 1")
}
print("Task 2")

DispatchQueue.main.async {
    print("task 1")
}
print("task 2")

DispatchQueue.global().sync {
    print("task 1")
}
print("task 2")
