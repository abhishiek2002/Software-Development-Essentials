# 🌐 Everything Is an Object

Object-Oriented Programming (OOP) is a cornerstone of most modern programming languages.

To say "everything is an object" means that **everything**—yes, even abstract things like numbers and text—can be treated as objects.

## ✂️ Think of a Pair of Scissors

* A pair of scissors has:

  * **Characteristics**: Color, length, handle grip.
  * **Actions**: Cutting, opening a package.
  * **Names**: "Office scissors", "Kitchen drawer scissors".

In OOP terms, these are:

* `Properties` (characteristics)
* `Methods` (actions)
* `Identifiers` (name or variable name for that specific object)

---

## 🚗 Consider a Car

* **Properties**: Color, number of doors, engine type.
* **Methods**: Drive, reverse, honk, stop.
* **Identifiers**: VIN number, license plate.

This real-world understanding gives us the key idea:

> **Everything in OOP is an object: it has properties, methods, and a name to identify it.**

---

# 🧱 Everything Is a Class

Before an object exists, there’s a **blueprint**—that’s a class.

## 🏧 What is a Class?

A **class** is a **template** that defines:

1. **Name**: The name of the class.
2. **Properties**: Characteristics (e.g., color, size).
3. **Methods**: Actions it can perform.
4. **Constructor**: A special method that runs when an object is created.

These are called the **class members**.

```js
class Car {
  constructor(color, type) {
    this.color = color;
    this.type = type;
  }

  drive() {
    console.log("The car is driving");
  }
}
```

## 📄 Blueprint vs. House

> You don’t live in the blueprint—you live in the house.

* The **class** is the blueprint.
* The **object** is the house built using that blueprint.
* When you create an object from a class, it's called **instantiation**.

You create **instances** (copies) of a class, each with its own unique name and potentially different values.

---

# ⚙️ Work with Existing Classes and Objects

You won't always create everything from scratch.

### 🧩 Built-in Classes

Programming languages come with classes built into their **Standard Library** or **SDK**.

For example:

* A `Button` in HTML, iOS, or Android is defined by a class.
* You create a button object and use properties/methods like `.text`, `.onClick()`, etc.

### 🧪 Modifying Objects

You work with instances like this:

```js
const myButton = new Button();
myButton.text = "Click me";       // Property
myButton.show();                  // Method
```

But some properties/methods don't need an instance. They are **static**:

```js
Button.defaultStyle = "rounded"; // Static property
Button.register();               // Static method
```

> Static properties are **shared** across all instances.

Example:

```js
class Star {
  static count = 0;

  constructor(points) {
    this.points = points;
    Star.count++; // Shared across all stars
  }
}
```

---

# 🧓‍⚖️ Make Your Own Classes and Objects

It’s not enough to define a class—you must design it well.

## ⭐ Problem: Star Ratings in Movie Reviews

Let’s say you create a `MovieReview` class with a `rating` property.

```js
class MovieReview {
  constructor(rating) {
    this.rating = rating; // ❗ No rules here
  }
}
```

Someone could set `rating` to `10` or `1000`—clearly out of bounds.

### 🔒 Solution: Encapsulation

Use **private properties** and **getter/setter methods**:

```js
class MovieReview {
  #rating;

  setRating(value) {
    if (value > 5) value = 5;
    if (value < 0) value = 0;
    this.#rating = value;
  }

  getRating() {
    return this.#rating;
  }
}
```

This gives you:

* **Control**
* **Validation**
* **Security** of your data

> 🔐 Private members can only be accessed from within the class.

Some languages let you define these getters/setters in a way that looks like normal properties, adding convenience for other developers.

---

# 🧬 Extend Classes (Inheritance)

What if you want to create new classes based on existing ones?

### 🐾 The Animal Kingdom

* `Animal` class: `weight`, `age`, `sleep()`, `move()`, `eat()`
* Extend it into subclasses:

  * `Cat`: adds `run()`
  * `Fish`: adds `swim()`
  * `Bird`: adds `fly()`

```js
class Animal {
  eat() {}
  sleep() {}
}

class Cat extends Animal {
  run() {}
}
```

This creates a **hierarchy**:

* `Animal` → `Cat`, `Fish`, `Bird`
* `Object` (in most languages) → `Everything else`

> The parent class is the **superclass**. The child is the **subclass**.

By changing the superclass, you automatically affect all subclasses—this is the power of **modular design**.

---

# 🔀 Use Polymorphism with Interfaces

Sometimes you don’t just want inheritance—you want **flexibility**.

## 🛍️ Problem: Birds Fly, But Not All Animals Do

If you type a variable as `Cat`, you can’t assign a `Fish` to it.

But if both `Cat` and `Fish` inherit from `Animal`, you *can* assign them to a variable typed as `Animal`.

```js
let pet: Animal;
pet = new Cat();
pet = new Fish();
```

### ✈️ What About Only Animals That Fly?

Now, typing it as `Animal` is too broad. Not all animals fly.

> Enter: **Interfaces**

An interface defines a **category** by enforcing a contract.

```js
interface Flyable {
  fly(): void;
}

class Bird implements Flyable {
  fly() {
    console.log("Flying...");
  }
}
```

Now you can do:

```js
let flyingThing: Flyable;
flyingThing = new Bird(); // ✅ OK
```

### 🧠 Polymorphism in Action

> "Poly" = many | "Morph" = forms

* A variable typed to a parent class or interface can hold **many forms** of that type.

---

# 🪠 From Syntax to Science

Object-oriented programming leads to **best practices** and **design patterns**—the “science” part of computer science.

These are:

* Theories and approaches tested by thousands of developers.
* Guidelines to write better, more scalable code.

> First you learn the **syntax**, then the **rules**, and finally, the **patterns**. Eventually, you'll help shape how programming is done in the future.

---

# 🛠️ Summary Table

| Concept             | Definition                                                            |
| ------------------- | --------------------------------------------------------------------- |
| Object              | A unit with properties, methods, and a name                           |
| Class               | A blueprint used to create objects                                    |
| Constructor         | A method that initializes a new object                                |
| Instance            | An individual object created from a class                             |
| Property            | A characteristic of a class/object                                    |
| Method              | An action/function defined in a class                                 |
| Static              | Shared across all instances of a class                                |
| Getter/Setter       | Methods to safely access/update private properties                    |
| Inheritance         | A way to build classes based on other classes                         |
| Superclass/Subclass | Parent and child classes in inheritance                               |
| Interface           | A contract that defines common functionality across unrelated classes |
| Polymorphism        | Treating multiple types as one common type                            |

---

> ✅ *Object-oriented programming is more than just a technique—it’s a mindset. Once you grasp it, you’ll see code not as lines and brackets, but as living systems with rules, roles, and relationships.*
