# 🧮 Mastering Values, Variables, Functions & APIs in Programming

---

## 💾 Work with Values and Variables

> Computers are data machines — storing, processing, and accessing information.  
> And at the heart of it all? **Variables**.

### 🎭 What Is a Variable?

- For the **programmer**: A **name** to refer to a value.
- For the **computer**: A **reserved space in memory** to store that value.

---

### 🔢 Integers: Whole Numbers

- Example: `3` (like 3 paperclips)  
- Called an **integer**
- Integers can be:
  - **Signed** (with a positive or negative sign)
  - **Unsigned** (only positive)

> 🧮 A signed integer needs memory space to store the **sign** too!

---

### 💰 Decimals and Fractions

- Currency values are **decimals** (like 0.25 dollars)
- Doesn't matter if it's a **million** or a **millionth** — the full **fractional detail** must be stored in memory

---

### 🧠 Defining a Variable

- When a variable is **defined**, memory is **allocated**
- You can:
  - Define the type manually
  - Let the computer **infer** the type

💡 But: If you store a decimal in an integer variable, it won’t fit!  
It’s like **putting a square peg in a round hole**.

> Some languages let you **convert types**, allowing the value to be reshaped to fit.

---

### 🧮 Math with Variables

- You can:
  - Add ➕
  - Subtract ➖
  - Multiply ✖️
  - Divide ➗

⚠️ Rules vary by language!  
E.g., some languages return **only integers** when dividing integers.

---

### 🧵 Strings: Words and Letters

- A **string** is a sequence of characters (wrapped in quotes)
- Cannot do math on strings
- But can **combine them** ➝ This is called **concatenation**

---

### 🧰 Operations You Can Do

- **Create a variable**
- **Name it**
- **Define its type**
- **Assign and reassign values**
- **Refer to it by name**
- **Copy or point it to other variables**
- **Output it**:
  - On the screen 🖥️
  - Into a GUI element 🧩
  - Inside a webpage 🧑‍💻

---

> 🌱 Values and variables are the building blocks of programs.  
> With them, we manipulate, transform, and represent data to build powerful applications.

---

## 🔁 Use Functions to Repeat Actions

### 🛠️ Why Functions?

Computers were invented to **automate** tasks.  
Instead of repeating steps over and over, you **wrap them into a function**.

- A **function** is a group of actions given a **name**
- Just like a variable is a named value, a function is a **named action**

### Example:

Imagine you always perform three steps to **calculate a sale total**.  
Instead of writing them every time, group them in a function.

- Call the function whenever needed
- When the program sees the function name:
  - It **jumps** to that function
  - Executes the code
  - **Returns** to where it left off

This sequence is called **program flow** — flowing through actions and functions until the program ends.

> 📦 Functions form the **basic organization** of your code.

---

## 🧩 Break Down Tasks

### 🧠 Decompose, Don’t Assume

Programming is about being **literal** and **exact**.

Take the task: **"Take out the trash."**

We think it's simple, but if a program followed only those words, would it:

- Grab the kitchen bag?
- Replace the liner?
- Include recycling?

> 🧪 A programmer’s job is to **break big tasks** into **tiny, foolproof steps**

### Lesson:

- Think of your function like a recipe
- Write every **micro-step**
- Don’t assume what’s “obvious”
- Think from someone else’s perspective

> ✨ Good programmers are **detail detectives**.

---

## 🛠️ Customize Functions with Parameters

### Why Parameters?

Sometimes, functions need to behave slightly differently based on input.

🛒 Say you're calculating an order total:
- Price of items = `$40`
- Sales tax and shipping vary!

Rather than hardcoding:
- Pass the **tax rate** and **shipping fee** as **parameters**

### How It Works:

- When calling a function, pass a value (parameter)
- Inside the function:
  - That value is treated as a **temporary variable**
- Once the function ends:
  - Parameters are **discarded**

🔁 You can send **different values** every time.

> 🧩 Parameters help create **flexible**, **reusable** code.

---

## 📦 Variables and Scope

### What is Scope?

Scope defines:
- **How long** a variable exists
- **Where** it can be accessed

🧠 Example: Think of a function as a **room in a hallway**  
If you create a variable **inside the room**, it stays there.  
When you leave the room (function ends), that variable **vanishes**.

### Types of Scope:

1. **Local Scope**:
   - Variable declared **inside a function**
   - Available **only** in that function
2. **Global Scope**:
   - Variable declared **outside** a function
   - Accessible **everywhere**

> 🧹 When the program ends, all memory is released.

> ✅ Knowing where to define variables is **critical** to managing memory and behavior.

---

## 🎁 Return Values from Functions

Functions don’t just run code — they often **return values**.

### Why Return?

Because variables **inside** a function disappear after it's done.  
To **get a value back**, you must **return** it.

---

### 3 Ways to Assign a Value:

1. **Literal**  
   `let x = 5;`

2. **Variable**  
   `let x = y;`

3. **Function return**  
   `let x = calculateTotal();`

---

### Notes on Returns:

- A function’s returned value **replaces** its name in code
- Functions must define a **return type**
- Not all functions need to return something (called **void**)
- Ensure that the **return type** matches what you’re assigning it to

> ⚠️ Some languages are strict about **type matching**, others help convert types for you.

---

## 🧩 Work with an API

### 🧰 What is an API?

**API = Application Programming Interface**

As a programmer, you’re building:
- Variables to store values
- Functions to perform actions
- Parameters to customize them
- Return types to give values back

Combined, these form the **rules** your program lives by — your **API**.

---

### Types of APIs:

- **Private API**:  
  For your own internal app code

- **Public API**:  
  So others can use your logic in their own apps and services

> 🚀 As your programs grow, your API will too. It becomes the interface between your logic and the world.

---

## 🧠 Summary: The Programmer’s Toolkit

- **Variables** = store & reference values
- **Functions** = reusable logic blocks
- **Parameters** = customize function behavior
- **Scope** = control lifespan & visibility of variables
- **Return Values** = get data out of functions
- **API** = define the rules of your program’s universe

> 🎓 These tools are the foundation of every great application — from small scripts to large software systems.

---

✨ *Master these, and you hold the power to build anything with code.*
