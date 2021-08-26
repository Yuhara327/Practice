import UIKit
//The Basics
let maximumNumberOfLoginAttempts = 10 //定数
var currentLoginAttempt = 0 //変数
var x = 0, y = 0, z = 0 //コンマで区切って複数宣言
var welcomeMessage: String//TypeAnnotations 型注釈
welcomeMessage = "Hello"
var red, green, blue: Double //複数
print(welcomeMessage)//定数変数の値を出力する
print("HelloWorld", terminator: "")//改行しない
print("\(welcomeMessage)World")
//これがコメント
/*複数行
 コメント/*入れ子コメント*/
 できる*/
let cat = "🐱"; print(cat)//同じ行の時セミコロン
let minValue = UInt8.min//UInt8の最小値
let maxValue = UInt8.max//UInt8の最大値
print(minValue);print(maxValue)
//基本的にはIntを使いましょう
//Double型　15桁浮動小数点(基本こっち)
//Float型　6桁浮動小数点
let decimalInteger = 17
let binaryInteger = 0b10001 //2進数で17
let octalInteger = 0o21 //8進数で17
let hexadecimalInteger = 0x11 //16進数で17
let number = 1.25e2 //1.25x10^2
let number2 = 0xFp2 //15x2^2
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)
print(pi)
print(integerPi)//切り捨てられる
typealias name = UInt16//タイプエイリアス
var test = name.max
let orangesAreOrange = true
let turnipsAreDelicious = false//bool
let http404Error = (404, "Not Found")//Tuple (Int,String)
let (code, message) = http404Error//取り出せる
print("The status code is \(code)")
print("The status message is \(message)")
let (justTheStatusCode, _) = http404Error//一個でも取り出せる
print("The status code is \(justTheStatusCode)")
print(http404Error.0)//インデックス番号
let http200Status = (statuscode: 200, description: "OK")//名前をつけれる
print(http200Status.description)
//Tupleは関数の戻り値として有用
let possibleNumber = "123"//optional
let convertedNumber = Int(possibleNumber)
var serverResponseCode: Int? = 404
serverResponseCode = nil//値を持たない
var surveyAnswer: String?//nil
//if文と強制アンラッピング
if convertedNumber != nil {
    print("convertedNumber contains some integer value")
} else {
    print("convertedNumber doesn't contain some integer value")
}
if convertedNumber != nil {
    print("convertedNumber has an integer value of\(convertedNumber!)")//!をつけて取り出す(強制アンラッピング)
}
//nil値に!をつけるとランタイムエラーが出るので注意
//optional binding
if let actualNumber = Int(possibleNumber) {//varでもいける
    print("The string\"\(possibleNumber)\"has an integer value of \(actualNumber)")
} else {
    print("The string\"\(possibleNumber)\"couldn't be converted to an integer")
}
//possibleNumberにIntが入ってた時、actualNumberに入って表示される
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
let possibleString: String? = "An optional string"//Implictly Unwrapped Optionals
let forcedString: String = possibleString! //require exclamation point
let assumedString: String! = "An implicitly unwrapped optional string"
let implicitString: String = assumedString // nore need exclamation
//!をつけることで使用時に強制的にアンラップされるようになる。中にnil入っていたらエラーが出るらしい
if assumedString != nil {
    print(assumedString!)
}
if let definiteString = assumedString { //optional binding
    print(definiteString)
}
//Error Handling
func canThrowAnError() throws {
    //エラーを投げることができる
}
do {
    try canThrowAnError()
    //エラーない時
} catch {
    //エラーでた時
}
//Assertions
let age = 4
assert(age >= 0, "A person's age can't be less than zero.")//age未満でエラー出る
//assert(age >= 0)単に繰り返すこともできる
//assertionFailure関数
if age > 10 {
    print("You can ride th rooller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero")
}
//前提条件 precondition関数
let index = 1
precondition(index > 0, "Index must be rater than zero.")
