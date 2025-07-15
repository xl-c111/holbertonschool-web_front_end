# Advanced HTML
## Core HTML Elements 
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
