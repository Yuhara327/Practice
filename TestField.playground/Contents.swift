class Monster {
    var name: String!
    var hp: Int!
    var df: Int!
    func display() {
        print("\(name!)が現れた")
        print("HP:\(hp!)")
        print("DF:\(df!)")
    }
}
let Monster1 = Monster()
Monster1.name = "slime"
Monster1.hp = 50
Monster1.df = 100
Monster1.display()

let Monster2 = Monster()
Monster2.name = "killerMachine"
Monster2.hp = 200
Monster2.df = 100
Monster2.display()

func Evolution (monsterNumber: String){
    monsterNumber.hp += 100
    monsterNumber.df += 50
    print("\(monsterNumber.name!)が進化した")
    print("HP:\(monsterNumber.hp!)")
    print("DF:\(monsterNumber.df!)")
}
Evolution(monsterNumber: Monster1)
