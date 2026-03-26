import Foundation

enum Beverage : CaseIterable{
    case tea, coffee, latee, noodle
}

let Iterables = Beverage.allCases.count
print("Iterable is the \(Iterables) of count !")

enum Fruit : CaseIterable{
    case Apple
    case Banana
    case Cherry
    case Drink
    case Cocount
}

for a in Fruit.allCases{
    print(a)
}

// with Raw values
enum Weekdays : String, CaseIterable{
    case monday = "Mon"
    case tuesday = "Tue"
    case wednesday = "Wed"
    case Thursday = "Thu"
    case Friday = "Fri"
    case Satursday = "Sat"
    case Sunday = "Sun"
}

for day in Weekdays.allCases{
    print(day.rawValue)
}



enum Monthly : String , CaseIterable{
    case January = "Jan"
    case February = "Feb"
    case March = "March"
    case April = "Apr"
    case May = "May"
    
}

for month in Monthly.allCases{
    print(month.rawValue)
}
