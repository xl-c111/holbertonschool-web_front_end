# 📚 CSS_advanced

## 📙 CSS Selectors Summary
| Type           | Example    | Used For                              |
| -------------- | ---------- | ------------------------------------- |
| Type selector  | `h1`, `p`  | Target specific HTML tags             |
| Class selector | `.btn`     | Reusable styles for multiple elements |
| ID selector    | `#nav`     | Unique element on the page            |
| Pseudo-class   | `:hover`   | Special states (hover, focus, etc.)   |
| Pseudo-element | `::before` | Style parts of elements               |
| Universal      | `*`        | Affect all elements                   |
| Descendant     | `div p`    | Target nested elements                |
| `:root`        | `:root`    | Define global CSS variables           |

----

## 📘 CSS Built-in Properties (Most Common)
| Property           | Purpose                   | Example                           |
| ------------------ | ------------------------- | --------------------------------- |
| `color`            | Text color                | `color: #333;`                    |
| `font-family`      | Font type                 | `font-family: Arial, sans-serif;` |
| `font-size`        | Font size                 | `font-size: 16px;`                |
| `font-weight`      | Text boldness             | `font-weight: bold;`              |
| `text-align`       | Horizontal alignment      | `text-align: center;`             |
| `text-transform`   | Uppercase / lowercase     | `text-transform: uppercase;`      |
| `margin`           | Space outside element     | `margin: 20px;`                   |
| `padding`          | Space inside element      | `padding: 10px;`                  |
| `border`           | Element border            | `border: 1px solid black;`        |
| `background-color` | Background color          | `background-color: #f0f0f0;`      |
| `display`          | Layout type (block, flex) | `display: flex;`                  |
| `position`         | Element positioning       | `position: absolute;`             |
| `z-index`          | Stack order               | `z-index: 10;`                    |

---

## 🧪 CSS Pseudo-classes

A **pseudo-class** lets you apply styles based on an element’s **state**  
(e.g., when a user hovers, focuses, or clicks it).

They always start with a colon `:`.

### ✅ Common Pseudo-classes

| Pseudo-class   | Applies When...                          | Example                          |
|----------------|-------------------------------------------|----------------------------------|
| `:hover`       | Mouse is over the element                 | `a:hover { color: red; }`        |
| `:focus`       | Element is focused (e.g., clicked input)  | `input:focus { border: blue; }`  |
| `:active`      | Element is being clicked                  | `button:active { scale: 0.98; }` |
| `:visited`     | Link has been visited                     | `a:visited { color: purple; }`   |
| `:first-child` | Element is the first child of its parent  | `p:first-child { margin-top: 0; }` |
| `:nth-child(n)`| Matches the nth child of a parent         | `li:nth-child(2) { color: red; }` |


### 🧠 Why Use Pseudo-classes?

- Create **interactive effects** (e.g. `:hover`, `:active`)
- Style elements based on **position** (e.g. `:first-child`)
- Improve **accessibility** and **focus handling**

### 🛠️ Example

```css
button {
  background: #eee;
}

button:hover {
  background: #ccc;
}

button:active {
  transform: scale(0.98);
}
```
---

## 🧩 CSS Custom Properties (Variables)

Custom properties are **user-defined variables** in CSS.  
They are declared with `--` and accessed with `var()`.

### 🧪 Common Use Cases
| Variable Name        | Purpose                    | Example Value             |
| -------------------- | -------------------------- | ------------------------- |
| `--main-color`       | Primary brand color        | `#d73953`                 |
| `--font-family-base` | Body font family           | `'Open Sans', sans-serif` |
| `--font-weight-bold` | Bold text weight           | `700`                     |
| `--section-padding`  | Consistent section spacing | `2rem`                    |

### ✅ Example

```css
:root {
  --main-color: #d73953;
  --font-size-large: 1.5rem;
}
```