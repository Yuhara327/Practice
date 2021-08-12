class Monster {
    var name: String
    var hp: Int
    var df: Int
    init(name: String,hp: Int,df: Int){
        self.name = name
        self.hp = hp
        self.df = df
    }
    func display() {
        print("\(name)が現れた")
        print("HP:\(hp)")
        print("DF:\(df)")
    }
}
let Monster1 = Monster(name: "slime",hp: 50,df: 100)
Monster1.display()


func evolution (monster: Monster){
    monster.hp += 100
    monster.df += 50
    print("\(monster.name)が進化した")
    print("HP:\(monster.hp)")
    print("DF:\(monster.df)")
}
evolution(monster: Monster1)
