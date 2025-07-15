# Advanced HTML
## 🔍 Core HTML Elements 
| **Element**       | **Purpose**                                                               | **Common Attributes**                                  | **Example**                                                              |
| ----------------- | ------------------------------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------------------------------------ |
| `<!DOCTYPE html>` | Declares the document is HTML5. Must be at the top of the page.           | *None*                                                 | `<!DOCTYPE html>`                                                        |
| `<html>`          | Root of the HTML document. Wraps the whole page content.                  | `lang`, `dir`                                          | `<html lang="en" dir="ltr">`                                             |
| `lang` / `dir`    | Specifies language (`lang`) and reading direction (`dir`) of content.     | `lang="en"`, `dir="rtl"` (for right-to-left languages) | `<html lang="en" dir="ltr">`                                             |
| `<head>`          | Contains meta-information, links to CSS, JS, etc. Not rendered on screen. | *None*                                                 | `<head> ... </head>`                                                     |
| `<title>`         | Sets the browser tab title. Only one allowed per document.                | *None*                                                 | `<title>Homepage</title>`                                                |
| `<meta>`          | Provides metadata (e.g., charset, viewport, description, author).         | `charset`, `name`, `content`, `viewport`               | `<meta name="viewport" content="width=device-width, initial-scale=1.0">` |
| `<link>`          | Links external files like CSS, favicon, etc.                              | `rel`, `href`, `type`                                  | `<link rel="stylesheet" href="styles.css">`                              |
| `<body>`          | Contains all visible content (headings, paragraphs, images, etc).         | *None*                                                 | `<body> ... </body>`                                                     |

## 🧱 Additional Elements and Examples
| **Element**            | **Purpose**                                         | **Example**                                       |
| ---------------------- | --------------------------------------------------- | ------------------------------------------------- |
| `<h1>` to `<h6>`       | Headings from largest (`<h1>`) to smallest (`<h6>`) | `<h2>Section Title</h2>`                          |
| `<p>`                  | Paragraph                                           | `<p>This is a paragraph.</p>`                     |
| `<a>`                  | Anchor / hyperlink to another page or location      | `<a href="https://example.com">Visit Site</a>`    |
| `<img>`                | Displays an image                                   | `<img src="logo.png" alt="Company Logo">`         |
| `<ul>`, `<ol>`, `<li>` | Unordered / ordered lists and list items            | `<ul><li>Item</li></ul>`                          |
| `<div>`                | Block-level generic container                       | `<div class="wrapper">...</div>`                  |
| `<span>`               | Inline generic container                            | `<span class="highlight">Text</span>`             |
| `<section>`            | Thematic grouping of content                        | `<section><h2>About</h2><p>...</p></section>`     |
| `<article>`            | Self-contained block of content                     | `<article><h3>Blog Post</h3><p>...</p></article>` |
| `<header>`             | Introductory content for a page or section          | `<header><h1>My Site</h1></header>`               |
| `<footer>`             | Footer section with metadata, links, etc.           | `<footer>© 2025</footer>`                         |
| `<nav>`                | Navigation section with links                       | `<nav><a href="#home">Home</a></nav>`             |
| `<br>`                 | Line break (no closing tag)                         | `Line 1<br>Line 2`                                |
| `<hr>`                 | Thematic break (horizontal rule)                    | `<hr>`                                            |
| `<main>`               | Main content of the document (only one per page)    | `<main><section>...</section></main>`             |
| `<aside>`              | Side content (ads, sidebars, etc.)                  | `<aside><p>Related links</p></aside>`             |
