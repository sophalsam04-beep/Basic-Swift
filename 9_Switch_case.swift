import Foundation

let someCharacter : Character = "z";
switch someCharacter{
case "a":
    print("A is the character");
case "z":
    print("z is the latin character")
default:
    print("Cannot have character")
    
}



let charater : Character = "a";
switch charater{
case "a":
case "A":
    print("A is the letter!")
case "B":
    print("B is the letter!")
default:
    print("invalid!")
}


let countstr = 52;
let counthing = "Move count into saturn";
let naturalcount : String

switch countstr{
case 1..<5:
    naturalcount = "a of"
case 5..<12:
    naturalcount = "b ofe"
case 12..<20:
    naturalcount = "c se"
case 20..<100:
    naturalcount = "love count";
    
default:
    print("count invalid !")
}


var somepoint = (1,1);
switch somepoint{
case (0,0):
    print("vfdsjknefsjer")
case (_,0):
    print("erkbfdsnjkbgf")
case (0,_):
    print("fdsjknbfs")
case (-2,2):
    print("vfdsnjkfes")
case (2,-2):
    print("vfsjkgres")
    
default:
    print("fsnjkbs")
}
