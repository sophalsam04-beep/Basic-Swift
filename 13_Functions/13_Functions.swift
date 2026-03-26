import Foundation
// function --> is the block of code that perform specific of task
func greet(person : String)-> String{
    let greeting = "Hello\t" + person + "!";
    return greeting;
}
print(greet(person: "Un virak"));
print(greet(person: "Prum chansamedy"));
print(greet(person: "Soun Sovichea"));
print(greet(person: "Kha sokmeng"));

func animal(name : String)-> String{
    let animals = "Name :\t" + name + " !";
    return animals;
}

func addNumber(a:Int, b:Int)->Int{
    let add = (a+b);
    return add;
    
}
print(addNumber(a: 32, b: 22))
func subNumber(a:Int, b:Int, c:Int)->Int{
    let sub = (a-b-c);
    return sub;
}
print(subNumber(a: 44, b: 33, c: 2))

func Multiplication(a:Double, b:Double)->Double{
    let mul = ( a * b );
    return mul;
}
print(Multiplication(a: 4.3, b: 5.2));

func divNumber(x:Double, y:Double)->Double{
    let div = ( y / x );
    return div;
}
print(divNumber(x: 33.3, y: 5.4));

func squareRoot() ->Double{
    return sqrt(64);
}
print(squareRoot())

func FullName(name: String, alreadyname : Bool)-> String{
    let f = name;
    return f;
    
}
print(FullName(name: "Un virak", alreadyname: false))

func test(name : String, alreadyname : Bool)->String{
    if alreadyname{
        return FullName(name: "Viphou", alreadyname: true)
    }else{
        return FullName(name: "viphou", alreadyname: false)
    }
}
print(test(name: "Chan mithona", alreadyname: false));
