import UIKit

//Basic Operator
//Assignment Operator
var b = 10
var a = 5
a = b //a = 10
(a, b) = (1, 2)
//算術演算子
print(1 + 2)
print(5 - 3)
print(2 * 3)
print(10 / 2.5)
print("hello" + "world")
//余剰演算子(%)
print(9 % 4)//あまりの計算
print(-9 % 4)//-9 = (4 x 2) + -1
print(3 % 2)
print(3 % -2) //bの負の値は無視される
//単項マイナス演算子
let threee = 3
let minusThree = -threee
let  plusThree = -minusThree
//単項プラス演算子
let minusSix = -6
let alsoMinusSix = +minusSix//何もしてない
//複合代入演算子
var x = 1
x += 2 //x = x + 2 //let b = a += 2とは書けない
//比較演算子 Boolを返す
1 == 1 //true
2 != 1 //true
2 > 1 //true
1 < 2 //true
1 >= 1 //true
2 <= 1 //false
//if文
let name = "world"
if name == "world" {
    print("hello world")
} else {
    print("I'm sorry\(name), but I don't recognize you")
}
//タプルの比較演算子
(1, "zebra") < (2, "apple") //true
(3, "apple") < (3, "bird") //true
(4, "dog") == (4, "dog") //true
//三項条件演算子
let contenHeight = 40
let hasHeader = true
let rowHieght = contenHeight + (hasHeader ? 50 : 20)//rowHeightは90
/*元のコード
 let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}
*/
//Nil-Coalescing Operator
//a != nil ? a! : b　の省略形
let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
//範囲演算子
//1...5は1から５までを示す
for index in 1...5 {
    print("\(index) times 5 is\(index * 5)")
}
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count { //countは含めない範囲演算子
    print("Person \(i + 1)is called \(names[i])")
}
for name in names [...2] {
    print(name)
}
for name in names [2...] {
    print(name)
}//片側範囲演算子
for name in names[..<2] {
    print(name)
}
let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)//含まれているか調べることができる
//論理演算子
//NOT演算子
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
//AND演算子
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("welcome!")
} else {
    print("ACCESS DENIED")
}
//OR演算子
let hasDoorKey = false
let knowsOberridePassword = true
if hasDoorKey || knowsOberridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//論理演算の組み合わせ　＋　明示的な括弧↓わかりやすくするため
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOberridePassword {
    print("Welcome")
} else {
    print("ACCESS DENIED")
}
