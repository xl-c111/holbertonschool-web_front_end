# 🌐 Advanced HTML

## 🏷️ HTML Elements
Each element typically has:
```
<opening-tag> content </closing-tag>
```
Some elements are `self-closing`:
```
<img src="image.jpg" alt="A description" />
<br />
<hr />
```
---

## 🧩 Attributes
Attributes give extra info and are written inside the opening tag.
✅ Example:
```
<a href="https://example.com" target="_blank">Visit Example</a>
```
- `href`: link destination  
- `target="_blank"`: open in a new tab
---

## 🧱 Nesting Rules

- Tags must be `properly nested` and `closed`
- `Block elements` can contain `inline elements`, but not the other way
✅ Example:
```
<p>This is a <strong>bold</strong> word.</p>

```
---

## ⚙️ Meta & Structure Elements
| **Element**       | **Purpose**                               | **Example**                                |
| ----------------- | ----------------------------------------- | ------------------------------------------ |
| `<!DOCTYPE html>` | Declares document as HTML5                | `<!DOCTYPE html>`                          |
| `<html>`          | Root of the HTML document                 | `<html lang="en" dir="ltr">`               |
| `<head>`          | Contains meta-info (not visible)          | `<head><title>My Page</title></head>`      |
| `<title>`         | Browser tab title                         | `<title>Homepage</title>`                  |
| `<meta>`          | Metadata (charset, viewport, description) | `<meta charset="UTF-8">`                   |
| `<link>`          | Links external resources like CSS         | `<link rel="stylesheet" href="style.css">` |
| `<script>`        | Links or embeds JavaScript                | `<script src="main.js"></script>`          |
| `<style>`         | Internal CSS                              | `<style>body { color: red; }</style>`      |

---

## 🧱 Semantic Elements
| **Element** | **Purpose**                         | **Example**                                       |
| ----------- | ----------------------------------- | ------------------------------------------------- |
| `<section>` | Thematic grouping of content        | `<section><h2>About</h2><p>Info</p></section>`    |
| `<article>` | Self-contained content block        | `<article><h3>Blog Post</h3><p>...</p></article>` |
| `<header>`  | Intro content for a page or section | `<header><h1>Welcome</h1></header>`               |
| `<footer>`  | Footer with metadata or links       | `<footer>© 2025 MySite</footer>`                  |
| `<nav>`     | Navigation bar                      | `<nav><a href="#home">Home</a></nav>`             |
| `<main>`    | Main content of the page            | `<main><section>...</section></main>`             |
| `<aside>`   | Sidebar or additional content       | `<aside><p>Tips</p></aside>`                      |

---
## 📦 Grouping Elements
| **Element** | **Purpose**                   | **Example**                           |
| ----------- | ----------------------------- | ------------------------------------- |
| `<div>`     | Generic block-level container | `<div class="wrapper">...</div>`      |
| `<span>`    | Generic inline container      | `<span class="highlight">Text</span>` |

---
## 📝 Text Elements
| **Element**      | **Purpose**                                         | **Example**                    |
| ---------------- | --------------------------------------------------- | ------------------------------ |
| `<h1>` to `<h6>` | Headings from largest (`<h1>`) to smallest (`<h6>`) | `<h2>Section Title</h2>`       |
| `<p>`            | Paragraph of text                                   | `<p>This is a paragraph.</p>`  |
| `<br>`           | Line break (no closing tag)                         | `Line 1<br>Line 2`             |
| `<hr>`           | Horizontal rule / thematic break                    | `<hr>`                         |
| `<strong>`       | Emphasized strong text (usually bold)               | `<strong>Important</strong>`   |
| `<em>`           | Emphasized text (usually italic)                    | `<em>Highlighted</em>`         |
| `<small>`        | Smaller text                                        | `<small>Footnote text</small>` |

---

## 📋 List Elements
| **Element**     | **Purpose**                      | **Example**                                      |
| --------------- | -------------------------------- | ------------------------------------------------ |
| `<ul>`          | Unordered (bulleted) list        | `<ul><li>Item A</li><li>Item B</li></ul>`        |
| `<ol>`          | Ordered (numbered) list          | `<ol><li>Step 1</li><li>Step 2</li></ol>`        |
| `<li>`          | List item (used in `ul` or `ol`) | `<li>Item</li>`                                  |
| `<dl>`          | Description list                 | `<dl><dt>HTML</dt><dd>Markup language</dd></dl>` |
| `<dt>` / `<dd>` | Term / Description               | `<dt>Term</dt><dd>Description</dd>`              |

---
## 🔗 Media Elements
| **Element** | **Purpose**                        | **Example**                                        |
| ----------- | ---------------------------------- | -------------------------------------------------- |
| `<a>`       | Anchor / hyperlink                 | `<a href="https://example.com">Visit Site</a>`     |
| `<img>`     | Displays an image                  | `<img src="logo.png" alt="Company Logo">`          |
| `<video>`   | Embeds a video                     | `<video controls><source src="video.mp4"></video>` |
| `<audio>`   | Embeds audio                       | `<audio controls><source src="audio.mp3"></audio>` |
| `<iframe>`  | Embeds another web page or content | `<iframe src="page.html"></iframe>`                |

---

## 🖼️🎵🎬 Embedding Media in HTML
### 🖼️ Image
Use the `<img>` tag to embed an image.
✅ Example:
```
<img src="image.jpg" alt="A description" width="300" height="200" />
```
- `src`: path or URL to the image
- `alt`: alternative text (shown if image can't load; important for accessibility)
- `width` / `height`: optional sizing

### 🎵 Audio
Use the `<audio>` tag to embed sound files.
✅ Example:
```
<audio controls>
  <source src="audio.mp3" type="audio/mpeg" />
  Your browser does not support the audio element.
</audio>
```
- `controls`: shows built-in play/pause UI
- `<source>`: defines audio file and format
- Fallback text appears if audio isn’t supported

### 🎬 Video
Use the `<video>` tag to embed video files.
✅ Example:
```
<video controls width="400">
  <source src="video.mp4" type="video/mp4" />
  Your browser does not support the video tag.
</video>
```
- `controls`: shows play/pause/volume bar  
- `width` / `height`: size of the video  
- `<source>`: define one or more video files  
- Add multiple formats (`.mp4`, `.webm`, `.ogg`) for better compatibility

---
## 🧩 HTML inline vs block Elements

### ✅ Block Elements

- 📏 Start on a new line  
- 📐 Take full width of the parent container  
- 🔧 Can set `width`, `height`, `margin`, `padding`  
- 🧱 Common: `<div>`, `<p>`, `<h1>`–`<h6>`, `<ul>`, `<section>`

### ✅ Inline Elements

- 🧵 Do not start on a new line  
- 📦 Only take up as much width as content  
- ⚠️ Cannot set `width` / `height` (ignored)  
- 🔧 Can set **horizontal** `padding` / `margin`  
- 🔤 Common: `<span>`, `<a>`, `<strong>`, `<em>`, `<img>`
