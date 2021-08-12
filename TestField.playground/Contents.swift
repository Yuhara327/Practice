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
        print("HP:\(hp)")
        print("DF:\(df)")
    }
    func appear() {
        print("\(name)が現れた")
        display()
    }
    func evolution() {
        self.hp += 100
        self.df += 50
        print("\(name)が進化した")
        display()
    }
}

let Monster1 = Monster(name: "slime",hp: 50,df: 100)
Monster1.appear()
Monster1.evolution()
