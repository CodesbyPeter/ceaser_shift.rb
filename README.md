# Caesar Cipher 🔐

This is a simple Ruby project that implements the **Caesar Cipher** encryption method. It was built as part of [The Odin Project](https://www.theodinproject.com/) curriculum.

## 📌 What It Does

The Caesar Cipher shifts letters by a set number of positions in the alphabet. This project:

- Takes a string of numbers (representing letters).
- Shifts each number by a specified amount (default is 3).
- Converts the numbers into letters (lowercase and uppercase).
- Returns the encrypted message.

---

## 💻 How to Use

1. Make sure you have **Ruby** installed on your machine.
2. Copy or download the file `caesar_cipher.rb`.
3. Run it in your terminal with any string of space-separated numbers.

### Example

```ruby
input = "0 1 2 26 27 28"
puts caesar_shift(input)

Output:

defGHI

🧠 How It Works

    Numbers from 0–25 map to a–z.

    Numbers from 26–51 map to A–Z.

    If the number is outside this range, a custom error is shown.

🚨 Error Handling

    Invalid inputs (like text instead of numbers) show:
    Error: Invalid Integer

    Numbers not in the 0-51 range show:
    Error: Integer X is out of range (0-51)

🧰 File Contents

    caesar_cipher.rb – Ruby file with all the logic

    README.md – This file

📚 Credits

Project from The Odin Project - Ruby Programming.
