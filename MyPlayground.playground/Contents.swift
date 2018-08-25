//: Playground - noun: a place where people can play

import UIKit

var emptyDictionary1: Dictionary<Int, Int> = [:]
var emptyDictionary2 = Dictionary<Int, String>()
var emptyDictionary3 = [String : String]()
var emptyDictionary4: [String : String] = [:]

//func saluteHunter() {
//    print("Hello there Hunter!")
//}

//saluteHunter()

//return types
//func findNearestHunter() -> String {
//    return "Argus"
//}
//
//var nearMe = findNearestHunter()
//
////basic function with return type and parameter
//func equipItems (armor: String) -> Bool {
//    print("\(armor) successfully equipeed!")
//    return true
//}
//
//equipItems(armor: "Demon Vest")

//func requestItemTrade(myItem: String) -> (yourItem: String, value: Int) {
//    print("Can I trade my \(myItem)?")
//    return ("Sacred Shield", 300)
//}
// let tradeItem = requestItemTrade(myItem: "Old Hat")
//print("Recieved \(tradeItem.yourItem) valued at \(tradeItem.value)\n")
//
//func requestTrade(myItem: String) -> String? {
//    let returnItem = "Garbage Sword"
//    return returnItem
//}
//
//if let item = requestTrade(myItem: "spiked boots") {
//    print("\(item) received!\n")
//} else {
//    print("trade failed!")
//}
//
//func setupArenaMatch(level: String = "Fire Marshes", numberOfOpponents: Int = 2) {
//    print("Your arena match will take place in \(level) between \(numberOfOpponents) players!")
//}
//
//setupArenaMatch()
//setupArenaMatch(level: "Poison Flats", numberOfOpponents: 5)
//
//func attack() {
//    print("Attacking!")
//}
//
//func attack(damage: Int) {
//    print("Attacking for \(damage) damage!")
//}
//
//func attack(damage: Double, weapon: String) -> Bool {
//    print("\(damage) damage dealt to enemy.")
//    return true
//}
//
//func computeBonusDamage(damage: Int) -> Int {
//    return damage * 4
//}
//
//func dealDamage (baseDamage: Int, computeFunc: (Int) -> Int) {
//    let bonus = computeFunc(baseDamage)
//    print("Base damage: \(baseDamage)\nBonus Damage: \(bonus)\n\n\(bonus + baseDamage) total damage dealth!")
//}
//
//dealDamage(baseDamage: 842, computeFunc: computeBonusDamage)

//var closureDeclaration: () -> () = {}
//
//var saluteHunter = { (paramterString: String) -> Void in
//    print(paramterString)
//}
//
//saluteHunter("Hello Hunter!")
//
//
//var saluteHunterShorthand: (String) -> String = { message in
//    return "\(message) Swift!"
//}
//
//saluteHunterShorthand("Hello")
//
//func fecthClosestHunters(closure: ([String]) -> Void) {
//    let hunters = ["Harrison", "Steven", "Jon"]
//    closure(hunters)
//}
//
//fecthClosestHunters { (hunters) in
//    for hunter in hunters {
//        print("Hunter -> \(hunter)")
//    }
//}

//typealias AttackTuple = (name: String, damage: Int, canRecharge: Bool)
//var sunStriket: AttackTuple = ("Sun Strike", 35, false)
//
//typealias ArrayClosure = ([Int]) -> Void
//
//func returnAttack() -> AttackTuple {
//    return("Hammer Sweep", 42, true)
//}
//
//print(returnAttack())
//
//func fetchPlayerScores(closure: ArrayClosure) {
//    let scores = [124,3325, 2342, 12312]
//    closure(scores)
//}
//
//fetchPlayerScores { (scores) in
//    print("Top Scores: ")
//    for score in scores {
//        print(score)
//    }
//}
//typealias Attack = (name: String, damage: Int)
//typealias ItemClosure = ([String:Int]) -> Void
//func attackEnemy (damage: Int) {
//    print("\(damage) damage dealt")
//}
//func attackEnemy (move: Attack) -> Bool {
//    print("You attacked with \(move.name)\nEnemy hit for \(move.damage)!\n")
//    return false
//}
//attackEnemy(damage: 31)
//let myMove = ("Swift", 45)
//attackEnemy(move: myMove)
//func fetchShopItems(closure: ItemClosure) {
//    let shopItems = ["Robes":35, "BF Sword":1200, "Wand":800]
//    closure(shopItems)
//}
//fetchShopItems { (shopItems) in
//    for (item, values) in shopItems {
//        print("The \(item) is worth \(values) gold.")
//    }
//}

//class Adventurer {
//
//    init(name: String, hp: Int) {
//        self.name = name
//        self.hp = hp
//    }
//
//    //optionals
//    var specialMove: String?
//
//    //type properties
//    static var credo = "Defend the helpless!"
//
//    //computed properties
//    var toFullHP: Int {
//        return maxHealth - hp
//    }
//
//    var health: Int {
//        get {
//            return hp
//        } set {
//            hp = newValue
//        }
//    }
//
//    var name: String
//    var hp: Int
//    let maxHealth: Int = 100
//
//    convenience init(name: String) {
//        self.init(name: name, hp: 100)
//    }
//}
//
//var newPlayer = Adventurer(name: "Hoang", hp: 100)
//var defaultPlayer = Adventurer(name: "Steven")
//
//newPlayer.health
//newPlayer.health = 46
//newPlayer.health
//newPlayer.hp
//newPlayer.toFullHP

//class Adventurer {
//    var name: String
//    static var credo = "Defend the Helpless!"
//
//    init (name: String) {
//        self.name = name
//    }
//
//    func attack(dmg: Int) {
//        print("Attacking for \(dmg) damage!")
//    }
//
//    static func printCredo() {
//        print(credo)
//    }
//
//
//}
//
//class Ranger: Adventurer {
//
//    var classAdvantage: String
//
//    init(name: String, advantage: String) {
//        self.classAdvantage = advantage
//        super.init(name: name)
//    }
//
//    override func attack(dmg: Int) {
//        print("Ranger attack for \(dmg)!")
//    }
//}
//
//var adventurer = Adventurer(name: "Hoang")
//var ranger = Ranger(name: "Ali", advantage: "Stealth")
//
//adventurer.attack(dmg: 35)
//ranger.attack(dmg: 56)
//
//Adventurer.printCredo()
//Ranger.printCredo()

//struct Level {
//    //Instance Properties
//    let levelID: Int
//    var levelObjective: String
//
//    //Optional
//    var hiddenArea: String?
//
//    //computed properties
//    var levelDescription: String {
//        return "Level ID: \(levelID) -> Objective: \(levelObjective)"
//    }
//}
//
//var dungeon = Level(levelID: 1, levelObjective: "Clear the big boss", hiddenArea: nil)
//
//print(dungeon.levelDescription)
//print(dungeon.levelObjective)

//struct Level {
//    var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the boss"]
//
//    func queryObjectives() {
//        for (index, objective) in objectives.enumerated() {
//            print("\(index): \(objective)")
//        }
//    }
//
//    mutating func completeObjective(index: Int) {
//        objectives.remove(at: index)
//    }
//}
//
//var marshlands = Level()
//marshlands.completeObjective(index: 0)
//marshlands.queryObjectives()

//enum ArmorType {
//    case Heavy
//    case Medium
//    case Light
//}
//
//enum WeaponType {
//    case Sword, Hammer, Fists
//}
//
//var currentArmor = ArmorType.Heavy
//print("You currently have \(currentArmor) armor equiped!")
//print("Your armor type is at position \(currentArmor.hashValue) in the enum")

//enum NPC: String {
//    case Villager = "Common to villages"
//    case Chief = "One per village"
//    case Blacksmith = "No limit per village"
//}
//
//var blackSmith = NPC.Blacksmith
//print(blackSmith.rawValue)
//
//enum PlayerState {
//    case Alive
//    case KO(restartToLevel: Int)
//    case Unknown(debug: String)
//}
//
//var currentState = PlayerState.Unknown(debug: "Incomplete transaction")
//
//switch currentState {
//
//case .Alive:
//    print("Im still here")
//case .KO(let restartToLevel):
//    print("Whoops, you'll have to start over at level \(restartToLevel)")
//case .Unknown(let debug):
//    print("Sorry, maintenece is happening. Error: \(debug)")
//}

protocol Nameable {
    var firstName: String {get}
    var lastName: String {get set}
    
    func createFullName() -> String
}

extension Nameable {
    func createFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

struct Player: Nameable {
    var firstName: String
    var lastName: String
    
    func createFullName() -> String {
        return "\(firstName) \(lastName) loves Swift 6!"
    }
}

let newPlayer = Player(firstName: "Hoang", lastName: "Nguyen")
print(newPlayer.createFullName())

class Item {
    var name: String
    var value: Int
    
    init (name: String, value: Int) {
        self.name = name
        self.value = value
    }
    
    convenience init (name: String) {
        self.init(name: name, value: 49)
    }
    
}

enum ItemType {
    case Healing, Offensive, Defensive
}

class HealingPotion: Item {
    var itemType: ItemType = .Healing
    var hpEffect: Int
    
    init(name: String, value: Int, effect: Int) {
        self.hpEffect = effect
        super.init(name: name, value: value)
    }
    
    func useMe() {
        print("HP boosted by \(hpEffect)")
    }
}

var potion = HealingPotion(name: "Super potion", value: 1000, effect: 150)

print(potion.useMe())














