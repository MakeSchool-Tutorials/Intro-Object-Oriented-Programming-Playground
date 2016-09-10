/*:
 ![Make School Banner](./swift_banner.png)
 # An automatic Zookeeper

 Zoe went in to pet the bees on her lunch break and nobody has seen her since! The animals haven't been fed, and they're getting hungry. Let's make your program more useful so that it can help any zookeeper keep track of all the animals they feed each day.

 But first, let's copy over your animal classes from the previous page...

 */

class Animal {
    let name: String
    let favoriteFood: String
    
    init(name: String, favoriteFood: String) {
        self.name = name
        self.favoriteFood = favoriteFood
    }
    
    func sleep() {
        print("\(self.name) sleeps for 8 hours")
    }
    
    func eat(food: String) {
        print("\(self.name) eats \(food)")
        if food == favoriteFood {
            print("YUM!!! \(self.name) wants more \(food)")
        } else {
            self.sleep()
        }
    }
}

class Tiger: Animal {
    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: name, favoriteFood: "meat")
    }
}

class Bear: Animal {
    // complete the Bear class here, using the completed Tiger class as an example
    init(name: String) {
        super.init(name: name, favoriteFood: "fish")
    }
    
    // here, we override the sleep function
    override func sleep() {
        // add in your Bear-specific sleep code here
        print("\(self.name) hibernates for 4 months")
    }
}

class Unicorn: Animal {
    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: name, favoriteFood: "marshmallows")
    }
    
    override func sleep() {
        // your overridden sleep code...
        print("\(self.name) sleeps in a cloud")
    }
}

class Giraffe: Animal {
    init(name: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: name, favoriteFood: "leaves")
    }
    
    override func eat(food: String) {
        // check here if you don't like the food you were given...
        // don't forget a call to the superclass eat function!
        if food == favoriteFood {
            super.eat(food: food)
            self.sleep()
        } else {
            print("YUCK!!! \(self.name) will not eat \(food)")
        }
    }
}

class Bee: Animal {
    init(name: String) {
        super.init(name: name, favoriteFood: "pollen")
    }
    
    override func eat(food: String) {
        if food == favoriteFood {
            super.eat(food: food)
            self.sleep()
        } else {
            print("YUCK!!! \(self.name) will not eat \(food)")
        }
    }
    
    override func sleep() {
        print("\(name) never sleeps")
    }
}

/*:

 # Zookeeper

 Great! Now, we're ready to create a `Zookeeper` class that contains a `name` instance variable and an initializer method that sets `name` using an argument. A zookeeper needs to feed many animals each day, so let's add a `feedAnimals` method, which should take two arguments: `animals` – an array of `Animal`s, and `food` – a string. This method should first print `"<name> is feeding <food> to <animals.count> animals"`, then iterate over the array of animals and call each animal's `eat` method, passing the value of `food` as the argument.

 Finally, call this `feedAnimals` method, using an array containing an instance of each animal, and your own favorite food.

 - callout(Challenge): Finish the `Zookeeper` class below!

 */

// Implement the Zookeeper class here
class Zookeeper {
    // put instance variables here
    let name: String

    init(name: String) {
        // save name to an instance variable
        self.name = name
    }

    func feed(animals: [Animal], food: String) {
        // complete your feedAnimals function here.
        print("\(name) is feeding meat to \(animals.count) animals")
        for animal in animals {
            animal.eat(food: food)
        }
    }
}

/*:
 ## Testing

 The test code below should output exactly this:

     ZoeBot is feeding meat to 5 animals
     Tigger eats meat
     YUM!!! Tigger wants more meat
     Pooh eats meat
     Pooh hibernates for 4 months
     Rarity eats meat
     Rarity sleeps in a cloud
     YUCK!!! Gemma will not eat meat
     YUCK!!! Stinger will not eat meat

 - callout(Hint): Create a `Zookeeper` instance with the name `"ZoeBot"`. Create an `Array` containing the animals from the previous page's test code. Pass the array to the `Zookeeper`'s `feedAnimals` method along with `"meat"`.

 */

let animals: [Animal] = [
    Tiger(name: "Tigger"),
    Bear(name: "Pooh"),
    Unicorn(name: "Rarity"),
    Giraffe(name: "Gemma"),
    Bee(name: "Stinger")
]
let zookeeper = Zookeeper(name: "ZoeBot")
zookeeper.feed(animals: animals, food: "meat")

//: [Previous](@previous) | [Next](@next)
