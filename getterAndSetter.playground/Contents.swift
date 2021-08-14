import UIKit

class Product {
    var nonTaxedPrice: Float = 0
    var inTaxPrice: Float {
        get {
            return self.nonTaxedPrice*1.1
        } set {
            self.nonTaxedPrice = newValue/1.1
        }
    }
}

var  item = Product()
item.nonTaxedPrice = 100
print(item.inTaxPrice)
item.inTaxPrice = 110
print(item.nonTaxedPrice)

