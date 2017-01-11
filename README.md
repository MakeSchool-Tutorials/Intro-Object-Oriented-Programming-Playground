# Object-Oriented Programming

## What you will learn
- The purpose of object-oriented programming and classes
- How to create a class and initialize objects
- How to use methods and instance variables
- How to utilize inheritance among classes
- How to feed unicorns

## Common issues
- **Initializing Instance Variables** - Don't forget that instance variables need to either be given an initial value or be initialized in the init method.  Otherwise, you will get the error "Return from initializer without initializing all stored properties".  For example, the Tiger class has a favoriteFood that is the same for every Tiger object.  The favoriteFood can be set to "meat" when the variable is created.  However, every Tiger has a different name, so that variable is initialized in the init method.  Then the name can be set when a Tiger object is created.
- **Calling Methods** - To call a method that you've created in a class, you have to first create an object of that class.  Methods are similar to functions in that they are blueprints of code that could be run.  The Tiger class has an eat method, but only a Tiger object can call the eat method.
- **Instance Variables vs. Arguments** - It can be easy to mix up your instance variables with the arguments that are passed into the methods in your class.  Remember that instance variables are initialized at the top of the class and are referenced using the self keyword (eg self.name or self.favoriteFood).  When an argument is passed into a method, we do not need to use the self keyword to get the value of the argument.
- **Superclasses and Subclasses** - Subclasses inherit from superclasses, which means that all instance variables and methods from a superclass are automatically in any subclass that inherits from the superclass, without having to re-write any of the code. To change a method that is in a superclass for a subclass, you can must use the override function. For example, an object of the Animal class might eat in a certain way, but since Unicorns are picky, they eat in a different way than most other Animals do. Therefore, we need to override the eat function within the Unicorn class to reflect this difference.
- **Static Variables vs. Non-static Variables** - Static variables are declared similarly to non-static variables, except using the "static" keyword in front of the declaration. They are also known as "type properties", which means that they are properties of the type - that is, it is a property consistent throughout every single object of the class. For example, in Animal, we have a population count that is constant throughout every instance of Animal. To use a static variable, instead of using the self keyword, we use the class name (eg Animal.population).

## What you should understand when finished
- What is object-oriented programming?
- Why do we use classes?
- What is the difference between a class and an object?
- What is a superclass and why is it useful to use inheritance?
- What does overriding a function do?
- What are static variables and how do we use them?