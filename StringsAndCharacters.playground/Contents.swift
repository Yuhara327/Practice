import UIKit

//multiline String Literals
let quotation = """
    複数行文字列
    がかける
    """
let singleLineString = "These are the same"
let multilineString = """
    These are same
    """//最初と最後の改行"は"含まれない
let softWrappedQuotation = """
    The White Rabbite put on his spectacles. "Where shall I begin, \
    please your Majesty?" he asked.
    "Begin at the biginning," the King said gravely, "and go on \
    till you come to the end; then stop."
    """
print(softWrappedQuotation)
// \を入れて改行を防ぐ、入れなければ改行される
//改行で始まり改行で終わりたい場合
let lineBreaks = """
    
    This string starts with a line break.
    It also ends with a line break.
    
    """
print(lineBreaks)
let linesWithIndentation = """
    この行はインデントなし
    　　　この行は3個分インデントがある
    ない
    """
print(linesWithIndentation)
//特殊文字
let nullCharacter = "nullCharacter\0"; print(nullCharacter)//null文字は何も起こらないらしい
let backSlash = "backslash\\"; print(backSlash)
let horizonalTab = "horizonalTab\t"; print(horizonalTab)//謎
let lineFeed = "lineFeed\n"; print(lineFeed)//普通に改行なはず
let carriageReturn = "carriageReturn\r"; print(carriageReturn)//カーソルを行頭へ
let doubleQuotationMark = "doubleQuotationMark\""; print(doubleQuotationMark)
let singleQuotationMark = "singleQuotationMark\'"; print(singleQuotationMark)
let dollarSign = "\u{24}"; print(dollarSign)//Unicodeの特殊文字も書けるよねって
let threeDoubleQuotationMarks = """
    Escaping the first quotation mark\"""
    Escaping the all three quotation marks\"\"\"
    """; print(threeDoubleQuotationMarks)
let threeMoreDoubleuotationMarks = #"""
Here are three more double quotes: """
"""#//特殊文字を出したい場合#をつける→この中で特殊文字が使いたい場合も#をつける
print(threeMoreDoubleuotationMarks)
//空の文字列の初期化
var emptyString = ""//空のリテラル
var anotherEmptyString = String()//イニシャライザ構文(?
if emptyString.isEmpty {
    print("Nothing to see here")//.isEmptyでチェックできる
}
//可変性
var variableString = "Horse"
variableString += " and carriage"//変えられるなぜなら変数なので
let constantString = "Hgihlander"//変えられないなぜなら定数だから

