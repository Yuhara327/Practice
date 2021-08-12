//定数変数
let name = "yuhara"
var age = "16"
print(name,age)
//型
var str: String = "String型。これは文字列です"
var int: Int = 1 //整数
var float: Float = 1.23456789
var double: Double = 1.23456789
var bool: Bool = false
print(1 + 1)
print(10 - 6)
print(2 * 5)
print(10 / 2)
print(10 % 3)
print (1 + 1)
print("1" + "1")
//命名基礎　キャメルケース
var myAge: Int = 16
//if文
if 20 <= myAge {
print("I can drink")
} else {
    print ("I cant drink")
}
var today: Int = 12
let birthday: Int = 0327
if today == birthday {
    print("HappyBirthday")
} else {
    print("Today\(today)no birthday")
}
//関数
func callMyName(_ name: String) {//アンダーバーで省略 callMyname(name: "Hiroki)
    print("\(name)")
}
callMyName("Hiroki")
///戻り値、返り値
func callMyNames(name: String) -> String {
    return name + "!"
}
print(callMyNames(name: "Hiroki"))
//配列
var array = ["Hiroki","Yuhara","Sigeru"]
print(array)
print(array[2])
print(array[0])
//for文
for i in 1...10 {
    print(i)
}
//class and instance
class Twitter {
    var userId: String!
    var date: Int!
    var content: String!
    func tweet() {
        print("UserID:\(userId!)")
        print("日付:\(date!)")
        print("投稿内容:\(content!)")
    }
}
//インスタンス
let tweetData1 = Twitter()
tweetData1.userId = "@tdnyuhara"
tweetData1.date = 12
tweetData1.content = "あけおめ"
tweetData1.tweet()
