import Foundation

struct MultiTime{
    let multiplier : Int
    subscript(value : Int)->Int{
        return multiplier * value;
    }
}

let result = MultiTime(multiplier: 5);
print("Six time three : \(result[7])")

struct Square{
    let v : Int
    subscript()->Int{
        return v * v;
    }
}

let c = Square(v: 3);
print("Square of number : \(c)")


struct Rectangle{
    let width : Double
    let height : Double
    subscript()->Double{
        return width * height;
    }
}
let f = Rectangle(width: 1.34, height: 5.5);
print(f)
