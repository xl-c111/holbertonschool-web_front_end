# 📚 CSS_advanced

## 🧱 Syntax
```
element-selector {
  one-style-property: value;
  another-style-property: value;
}
```

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

## 🧮 Cascading & Combinators
```
* { }                      /* All elements */
section { }               /* Tag selector */
.my-block > .my-title { } /* Direct child */
.my-block + .my-title { } /* Next sibling */
.my-block ~ .my-title { } /* Any sibling */

```

---

## 📏 Units and Values

| Unit | Type       | Description                              |
|------|------------|------------------------------------------|
| `px` | Absolute   | Fixed size, not affected by parent or root |
| `rem`| Relative   | Relative to the root element (`<html>`)   |
| `em` | Relative   | Relative to the font size of the parent element |

---

## 🧩 CSS Variables (Custom Properties)
```
:root {
  --main-bg-color: blue;
}
body {
  background-color: var(--main-bg-color);
}

```

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

## ✍️ Text Styling Details

| Property          | Description              | Example                          |
| ----------------- | ------------------------ | -------------------------------- |
| `text-decoration` | Line style for text      | `text-decoration: line-through;` |
| `text-transform`  | Capitalization           | `text-transform: lowercase;`     |
| `letter-spacing`  | Space between characters | `letter-spacing: 0.1rem;`        |
| `line-height`     | Line spacing             | `line-height: 1.5;`              |

---

## 🧪 CSS Pseudo-classes

| Pseudo-class   | Applies When...                          | Example                          |
|----------------|-------------------------------------------|----------------------------------|
| `:hover`       | Mouse is over the element                 | `a:hover { color: red; }`        |
| `:focus`       | Element is focused (e.g., clicked input)  | `input:focus { border: blue; }`  |
| `:active`      | Element is being clicked                  | `button:active { scale: 0.98; }` |
| `:visited`     | Link has been visited                     | `a:visited { color: purple; }`   |
| `:first-child` | Element is the first child of its parent  | `p:first-child { margin-top: 0; }` |
| `:nth-child(n)`| Matches the nth child of a parent         | `li:nth-child(2) { color: red; }` |


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

## 🎭 Pseudo-elements
| Pseudo-element   | Description                         |
| ---------------- | ----------------------------------- |
| `::before`       | Inserts content before the element  |
| `::after`        | Inserts content after the element   |
| `::first-letter` | Targets the first letter of a block |

```
a::after {
  content: '→';
}
p::first-letter {
  font-size: 130%;
}
```
---

## 📦 CSS Box Model
- **`content`**: The actual content (text, image)  
- **`padding`**: Space between content and border  
- **`border`**: Surrounds padding/content  
- **`margin`**: Space outside the element's border

```
.box {
  box-sizing: border-box;
  width: 200px;
  padding: 10px;
  border: 5px solid black;
  margin: 20px;
}
```
---

## 📌 Positioning
- **`static`**: Default, follows document flow  
- **`relative`**: Offset from normal position  
- **`absolute`**: Positioned relative to nearest ancestor  
- **`fixed`**: Fixed to viewport  
- **`sticky`**: Sticks to edge while scrolling

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

---

## ♻️ CSS Reset / Normalize

- **Reset** (e.g., *Eric Meyer*):
  - Removes all default browser styling.
  - Provides a clean, uniform starting point.

- **Normalize**:
  - Preserves useful default styles.
  - Corrects inconsistencies between browsers.
  - Improves cross-browser rendering.

> ✅ Use **Normalize.css** for modern projects unless you have specific reasons to fully reset styles.
