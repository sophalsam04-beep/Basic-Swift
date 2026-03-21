// Learn --> Array | Set | Dictionary
// Developer : SAM SOPHAL
import Foundation

let sometInt : [Int] = []  // Create array empty index of values
print("someInt is [INT] of the array \(sometInt.count) of index !");
let numbers = [Int]()
let number : [Int] = []

let n = [Double]()
var array : [Int] = [11,333,24,24,664,35];
array.append(32);
array.append(101);
array.append(94);
array.append(01);
array.append(-38);

print(array.count)
print(array.isEmpty) // value : valueifTrue : valueifFalse
array.sort()
    // Array count with default values
let threevalues = Array(repeating: 0.0, count: 3)  //
print(threevalues) // result show you the threevalues of array[Int] and equal to [0.0,0.0,0.0]
let a = Array(repeating: 3.3, count: 10);
// Array to store multi Time of values
let time = [3.3,4.4,3.2,4.2,5.3];

let g = Array(repeating: time, count: 5).flatMap{ $0 }   // if you cannot used flatMap it generated one multi Time line buyt when you used flatMap we generated count of number that you wanted
print(g)

// Sum of array flatMap concentenation with two comibne
let vh = [1.4,44.3,4.3,44.3,55.3,93.499,44.4];

let combineArr = vh + g;
print(combineArr)

// string of array flatMap
let str_arr : [String] = ["Un virak","Prum chansamedy","Ros bonna","Sam Ang"];
let v = Array(repeating: str_arr, count: 7).flatMap{ $0 }
print(v)


// use conditional to check is boolean true and false
if str_arr.isEmpty{
    print("str arr is true");
}else{
    print("str arr is not true but false");
}


// used short hand ternary for if-else statement
let result = str_arr.contains(where: str_arr.contains(_:)) ? "str arr is true" : "str arr is not true but false"
print(result)
