import UIKit

var name = "Sumaya"
var birthYear = 2006
var currentYear = 2022
var age = currentYear - birthYear

print("Hello my name is \(name) and my age is \(age)")

if age >= 14 && age <= 18 {
    print("فض كل سبت واربعاء وراك دوام")
}
else {
    print("رد نام واحلم بالكويت تبرمج")
}

var numb1 = "8"
var numb2 = 4
var double = (Double(numb1) ?? 0) + Double(numb2)
