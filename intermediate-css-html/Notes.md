# INTERMEDIATE HTML AND CSS PERSONAL NOTES

## TABLE OF CONTENTS

- [INTERMEDIATE HTML AND CSS PERSONAL NOTES](#intermediate-html-and-css-personal-notes)
  - [TABLE OF CONTENTS](#table-of-contents)
  - [1. TABLES - BASIC STUFF](#1-tables---basic-stuff)
    - [1.1. When NOT to use tables](#11-when-not-to-use-tables)
    - [1.2. Creating first table](#12-creating-first-table)
    - [1.3. Adding headers with `<th>` elements](#13-adding-headers-with-th-elements)
    - [1.4. Allowing cells to span multiple rows and columns](#14-allowing-cells-to-span-multiple-rows-and-columns)
    - [1.5. Providing common styling to columns](#15-providing-common-styling-to-columns)
    - [1.6. Examples of Table Styling](#16-examples-of-table-styling)
  - [2. TABLES - ADVANCED FEATURES AND ACCESSIBILITY](#2-tables---advanced-features-and-accessibility)
    - [2.1. Adding a caption to your table with `<caption>`](#21-adding-a-caption-to-your-table-with-caption)
    - [2.2. Adding structure with `<thead>`, `<tfoot>`, and `<tbody>`](#22-adding-structure-with-thead-tfoot-and-tbody)
    - [2.3.Nesting tables](#23nesting-tables)
    - [2.4. Tables for visually impaired users](#24-tables-for-visually-impaired-users)
    - [2.5. Examples of scopes and headers](#25-examples-of-scopes-and-headers)

## 1. TABLES - BASIC STUFF

- A table is a structured set of data made up of rows and columns (tabular data).
- It allows you to quickly and easily look up values that indicate some kind of connection between different types of data, i.e. a person and their age:

| **Person** | **Age** |
|------------|---------|
| Chris      | 38      |
| Dennis     | 45      |
| Sarah      | 29      |
| Karen      | 47      |

- **Table is rigid:** information is easily interpreted by making visual associations between row and column headers.

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.1. When NOT to use tables

- HTML tables should be used for **tabular data** — this is what they are designed for.
- A lot of people used to use HTML tables to lay out web pages, e.g. one row to contain the header, one row to contain the content columns, one row to contain the footer.
- This is a bad idea. The main reasons are as follows:
  - **Reduced accessibility for visually impaired users:** screen readers interpret the tags that exist in an HTML page and read out the contents to the user. Because tables are not the right tool for layout, the screen readers' output will be confusing to their users.
  - **Tables produce tag soup:** table layouts involve more complex markup structures than proper layout techniques. This can result in the code being harder to write, maintain, and debug.
  - **Tables are not responsive:** proper layout containers' (such as `<header>`, `<section>`, `<article>`, or `<div>`) width defaults to 100% of their parent element. Tables on the other hand are sized according to their content by default.

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.2. Creating first table

1. The content of every table is enclosed by these two tags: `<table></table>`. Add these inside the body of your HTML.
2. The smallest container inside a table is a table cell, which is created by a `<td>` element (`'td'` stands for **'table data'**). Add the following inside your table tags:

```html
<td>Hi, I'm your first cell.</td>
```

3. If we want a row of four cells, we need to copy these tags three times. Update the contents of your table to look like so (tip: you can use Emmet to create four `td` elements like this: `td*4`):

```html
<td>Hi, I'm your first cell.</td>
<td>I'm your second cell.</td>
<td>I'm your third cell.</td>
<td>I'm your fourth cell.</td>
```

The cells are not placed underneath each other, rather they are automatically aligned with each other on the same row. Each `<td>` element creates a single cell and together they make up the **first row**. Every cell we add makes the row grow longer.

4. To stop this row from growing and start placing subsequent cells on a second row, we need to use the `<tr>` element (`'tr'` stands for **'table row'**):

```html
<tr>
  <td>Hi, I'm your first cell.</td>
  <td>I'm your second cell.</td>
  <td>I'm your third cell.</td>
  <td>I'm your fourth cell.</td>
</tr>
```

5. Now you've made one row, have a go at making one more — each row needs to be wrapped in an additional `<tr>` element, with each cell contained in a `<td>`.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>First table template</title>
</head>
<body>
  <table>
    <tr>
      <td>Hi, I'm your first cell.</td>
      <td>I'm your second cell.</td>
      <td>I'm your third cell.</td>
      <td>I'm your fourth cell.</td>
    </tr>
    <tr>
      <td>One</td>
      <td>Two</td>
      <td>Three</td>
      <td>Four</td>
    </tr>
  </table>
</body>
</html>
```

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.3. Adding headers with `<th>` elements

- Now let's turn our attention to **table headers** — special cells that go at the start of a row or column and define the type of data that row or column contains.
- To illustrate why they are useful, have a look at the following table example. First the source code:

```html
<table>
  <tr>
    <td>&nbsp;</td>
    <td>Knocky</td>
    <td>Flor</td>
    <td>Ella</td>
    <td>Juan</td>
  </tr>
  <tr>
    <td>Breed</td>
    <td>Jack Russell</td>
    <td>Poodle</td>
    <td>Streetdog</td>
    <td>Cocker Spaniel</td>
  </tr>
  <tr>
    <td>Age</td>
    <td>16</td>
    <td>9</td>
    <td>10</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Owner</td>
    <td>Mother-in-law</td>
    <td>Me</td>
    <td>Me</td>
    <td>Sister-in-law</td>
  </tr>
  <tr>
    <td>Eating Habits</td>
    <td>Eats everyone's leftovers</td>
    <td>Nibbles at food</td>
    <td>Hearty eater</td>
    <td>Will eat till he explodes</td>
  </tr>
</table>
```

<table>
  <tr>
    <td>&nbsp;</td>
    <td>Knocky</td>
    <td>Flor</td>
    <td>Ella</td>
    <td>Juan</td>
  </tr>
  <tr>
    <td>Breed</td>
    <td>Jack Russell</td>
    <td>Poodle</td>
    <td>Streetdog</td>
    <td>Cocker Spaniel</td>
  </tr>
  <tr>
    <td>Age</td>
    <td>16</td>
    <td>9</td>
    <td>10</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Owner</td>
    <td>Mother-in-law</td>
    <td>Me</td>
    <td>Me</td>
    <td>Sister-in-law</td>
  </tr>
  <tr>
    <td>Eating Habits</td>
    <td>Eats everyone's leftovers</td>
    <td>Nibbles at food</td>
    <td>Hearty eater</td>
    <td>Will eat till he explodes</td>
  </tr>
</table>

- The problem here is that, while you can kind of make out what's going on, it is not as easy to cross reference data as it could be.
- If the column and row headings stood out in some way, it would be much better.
- To achieve that, we are going to use table headers

1. To recognize the table headers as headers, both visually and semantically, you can use the `<th>` element (`'th'` stands for **'table header'**). This works in exactly the same way as a `<td>`, except that it denotes a header, not a normal cell.
2. Go into your HTML, and change all the `<td>` elements surrounding the table headers into `<th>` elements.

```html
<table>
    <tr>
      <td>&nbsp;</td>
      <th>Knocky</th>
      <th>Flor</th>
      <th>Ella</th>
      <th>Juan</th>
    </tr>
    <tr>
      <th>Breed</th>
      <td>Jack Russell</td>
      <td>Poodle</td>
      <td>Streetdog</td>
      <td>Cocker Spaniel</td>
    </tr>
    <tr>
      <th>Age</th>
      <td>16</td>
      <td>9</td>
      <td>10</td>
      <td>5</td>
    </tr>
    <tr>
      <th>Owner</th>
      <td>Mother-in-law</td>
      <td>Me</td>
      <td>Me</td>
      <td>Sister-in-law</td>
    </tr>
    <tr>
      <th>Eating Habits</th>
      <td>Eats everyone's leftovers</td>
      <td>Nibbles at food</td>
      <td>Hearty eater</td>
      <td>Will eat till he explodes</td>
    </tr>
  </table>
```

<table>
    <tr>
      <td>&nbsp;</td>
      <th>Knocky</th>
      <th>Flor</th>
      <th>Ella</th>
      <th>Juan</th>
    </tr>
    <tr>
      <th>Breed</th>
      <td>Jack Russell</td>
      <td>Poodle</td>
      <td>Streetdog</td>
      <td>Cocker Spaniel</td>
    </tr>
    <tr>
      <th>Age</th>
      <td>16</td>
      <td>9</td>
      <td>10</td>
      <td>5</td>
    </tr>
    <tr>
      <th>Owner</th>
      <td>Mother-in-law</td>
      <td>Me</td>
      <td>Me</td>
      <td>Sister-in-law</td>
    </tr>
    <tr>
      <th>Eating Habits</th>
      <td>Eats everyone's leftovers</td>
      <td>Nibbles at food</td>
      <td>Hearty eater</td>
      <td>Will eat till he explodes</td>
    </tr>
  </table>

- **Note:** Table headings come with some default styling — they are bold and centered even if you don't add your own styling to the table, to help them stand out.
- Along with the `scope` attribute, they allow you to make tables more accessible by associating each header with all the data in the same row or column.
- Screen readers are then able to read out a whole row or column of data at once, which is pretty useful.

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.4. Allowing cells to span multiple rows and columns

- Sometimes we want cells to span multiple rows or columns.
- Take the following simple example, which shows the names of common animals:
  - In some cases, we want to show the names of the males and females next to the animal name.
  - Sometimes we don't, and in such cases we just want the animal name to span the whole table.

The initial markup looks like this:

```html
<table>
  <tr>
    <th>Animals</th>
  </tr>
  <tr>
    <th>Hippopotamus</th>
  </tr>
  <tr>
    <th>Horse</th>
    <td>Mare</td>
  </tr>
  <tr>
    <td>Stallion</td>
  </tr>
  <tr>
    <th>Crocodile</th>
  </tr>
  <tr>
    <th>Chicken</th>
    <td>Hen</td>
  </tr>
  <tr>
    <td>Rooster</td>
  </tr>
</table>
```

- This is the output:

<table>
  <tr>
    <th>Animals</th>
  </tr>
  <tr>
    <th>Hippopotamus</th>
  </tr>
  <tr>
    <th>Horse</th>
    <td>Mare</td>
  </tr>
  <tr>
    <td>Stallion</td>
  </tr>
  <tr>
    <th>Crocodile</th>
  </tr>
  <tr>
    <th>Chicken</th>
    <td>Hen</td>
  </tr>
  <tr>
    <td>Rooster</td>
  </tr>
</table>

- We need a way to get "Animals", "Hippopotamus", and "Crocodile" to span across two columns, and "Horse" and "Chicken" to span downwards over two rows.
- Fortunately, table headers and cells have the `colspan` and `rowspan` attributes, which allow us to do just those things.
- Both accept a unitless number value, which equals the number of rows or columns you want spanned i.e., `colspan="2"` makes a cell span two columns.

1. Use `colspan` to make "Animals", "Hippopotamus", and "Crocodile" span across two columns.
2. Use `rowspan` to make "Horse" and "Chicken" span across two rows.
3. Save and open your code in a browser to see the improvement.

```html
  <table>
    <tr>
      <th colspan="2">Animals</th>
    </tr>
    <tr>
      <th colspan="2">Hippopotamus</th>
    </tr>
    <tr>
      <th rowspan="2">Horse</th>
      <td>Mare</td>
    </tr>
    <tr>
      <td>Stallion</td>
    </tr>
    <tr>
      <th colspan="2">Crocodile</th>
    </tr>
    <tr>
      <th rowspan="2">Chicken</th>
      <td>Hen</td>
    </tr>
    <tr>
      <td>Rooster</td>
    </tr>
  </table>
```

<table>
  <tr>
    <th colspan="2">Animals</th>
  </tr>
  <tr>
    <th colspan="2">Hippopotamus</th>
  </tr>
  <tr>
    <th rowspan="2">Horse</th>
    <td>Mare</td>
  </tr>
  <tr>
    <td>Stallion</td>
  </tr>
  <tr>
    <th colspan="2">Crocodile</th>
  </tr>
  <tr>
    <th rowspan="2">Chicken</th>
    <td>Hen</td>
  </tr>
  <tr>
    <td>Rooster</td>
  </tr>
</table>

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.5. Providing common styling to columns

- HTML has a method of defining styling information for an entire column of data all in one place — the `<col>` and `<colgroup>` elements.
- These exist because normally you'd have to specify your styling information on every `<td>` or `<th>` in the column, or use a complex selector such as `:nth-child`.
- **Note:** Styling columns like this is limited to a few properties: `border`, `background`, `width`, and `visibility`. To set other properties you'll have to either style every `<td>` or `<th>` in the column, or use a complex selector such as `:nth-child`.
- Take the following simple example:

```html
<table>
  <tr>
    <th>Data 1</th>
    <th style="background-color: yellow">Data 2</th>
  </tr>
  <tr>
    <td>Calcutta</td>
    <td style="background-color: yellow">Orange</td>
  </tr>
  <tr>
    <td>Robots</td>
    <td style="background-color: yellow">Jazz</td>
  </tr>
</table>
```

Which gives us

<table>
  <tr>
    <th>Data 1</th>
    <th style="background-color: yellow">Data 2</th>
  </tr>
  <tr>
    <td>Calcutta</td>
    <td style="background-color: yellow">Orange</td>
  </tr>
  <tr>
    <td>Robots</td>
    <td style="background-color: yellow">Jazz</td>
  </tr>
</table>

- This isn't ideal, as we have to repeat the styling information across all three cells in the column (we'd probably have a class set on all three in a real project and specify the styling in a separate stylesheet).
- Instead of doing this, we can specify the information once, on a `<col>` element.
- `<col>` elements are specified inside a `<colgroup>` container just below the opening `<table>` tag. We could create the same effect as we see above by specifying our table as follows:

```html
<table>
  <colgroup>
    <col />
    <col style="background-color: yellow" />
  </colgroup>
  <tr>
    <th>Data 1</th>
    <th>Data 2</th>
  </tr>
  <tr>
    <td>Calcutta</td>
    <td>Orange</td>
  </tr>
  <tr>
    <td>Robots</td>
    <td>Jazz</td>
  </tr>
</table>
```

<table>
  <colgroup>
    <col />
    <col style="background-color: yellow" />
  </colgroup>
  <tr>
    <th>Data 1</th>
    <th>Data 2</th>
  </tr>
  <tr>
    <td>Calcutta</td>
    <td>Orange</td>
  </tr>
  <tr>
    <td>Robots</td>
    <td>Jazz</td>
  </tr>
</table>

- Effectively we are defining two "style columns", one specifying styling information for each column.
- We still have to include a blank `<col>` element — if we didn't, the styling would just be applied to the first column.
- If we wanted to apply the styling information to both columns, we could just include one `<col>` element with a span attribute on it, like this:

```html
<colgroup>
  <col style="background-color: yellow" span="2" />
</colgroup>
```

<table>
  <colgroup>
    <col style="background-color: yellow" span="2" />
  </colgroup>
  <tr>
    <th>Data 1</th>
    <th>Data 2</th>
  </tr>
  <tr>
    <td>Calcutta</td>
    <td>Orange</td>
  </tr>
  <tr>
    <td>Robots</td>
    <td>Jazz</td>
  </tr>
</table>

- Just like `colspan` and `rowspan`, `span` takes a unitless number value that specifies the number of columns you want the styling to apply to.

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 1.6. Examples of Table Styling

- Below you can see the timetable of a languages teacher. On Friday she has a new class teaching Dutch all day, but she also teaches German for a few periods on Tuesday and Thursdays. She wants to highlight the columns containing the days she is teaching.

```html
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>School timetable</title>
    <style>
    html {
      font-family: sans-serif;
    }

    table {
      border-collapse: collapse;
      border: 2px solid rgb(200,200,200);
      letter-spacing: 1px;
      font-size: 0.8rem;
    }

    td, th {
      border: 1px solid rgb(190,190,190);
      padding: 10px 20px;
    }

    td {
      text-align: center;
    }

    caption {
      padding: 10px;
    }
    </style>
  </head>
  <body>
    <h1>School timetable</h1>

    <table>
      <tr>
        <td>&nbsp;</td>
        <th>Mon</th>
        <th>Tues</th>
        <th>Wed</th>
        <th>Thurs</th>
        <th>Fri</th>
        <th>Sat</th>
        <th>Sun</th>
      </tr>
      <tr>
        <th>1st period</th>
        <td>English</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>2nd period</th>
        <td>English</td>
        <td>English</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>3rd period</th>
        <td>&nbsp;</td>
        <td>German</td>
        <td>&nbsp;</td>
        <td>German</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <th>4th period</th>
        <td>&nbsp;</td>
        <td>English</td>
        <td>&nbsp;</td>
        <td>English</td>
        <td>Dutch</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>


  </body>
</html>
```

<body>
  <h2>School timetable</h1>

  <table>
    <tr>
      <td>&nbsp;</td>
      <th>Mon</th>
      <th>Tues</th>
      <th>Wed</th>
      <th>Thurs</th>
      <th>Fri</th>
      <th>Sat</th>
      <th>Sun</th>
    </tr>
    <tr>
      <th>1st period</th>
      <td>English</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>2nd period</th>
      <td>English</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>3rd period</th>
      <td>&nbsp;</td>
      <td>German</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>4th period</th>
      <td>&nbsp;</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>English</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</body>
<br>

- Add a `<colgroup>` element at the top of the table, just underneath the `<table>` tag, in which you can add your `<col>` elements (see the remaining steps below).
- The first two columns need to be left unstyled.
- Add a background color to the third column. The value for your style attribute is `background-color:#97DB9A`;
- Set a separate `width` on the fourth column. The value for your style attribute is `width: 42px`;
Add a background color to the fifth column. The value for your style attribute is `background-color: #97DB9A`;
Add a different background color plus a border to the sixth column, to signify that this is a special day and she's teaching a new class. The values for your style attribute are `background-color:#DCC48E; border:4px solid #C1437A`;
The last two days are free days, so just set them to no background color but a set `width`; the value for the style attribute is `width: 42px`;

```html
body>
  <h2>School timetable</h1>

  <table>
    <colgroup>
      <col />
      <col />
      <col style="background-color: #97DB9A"/>
      <col style="width: 42px"/>
      <col style="background-color: #97DB9A" />
      <col style="background-color:#DCC48E; border:4px solid #C1437A"/>
      <col style="width: 42px" span="2"/>
    </colgroup>
    <tr>
      <td>&nbsp;</td>
      <th>Mon</th>
      <th>Tues</th>
      <th>Wed</th>
      <th>Thurs</th>
      <th>Fri</th>
      <th>Sat</th>
      <th>Sun</th>
    </tr>
    <tr>
      <th>1st period</th>
      <td>English</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>2nd period</th>
      <td>English</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>3rd period</th>
      <td>&nbsp;</td>
      <td>German</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>4th period</th>
      <td>&nbsp;</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>English</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</body>
```

<body>
  <h2>School timetable</h1>

  <table>
    <colgroup>
      <col />
      <col />
      <col style="background-color: #97DB9A"/>
      <col style="width: 42px"/>
      <col style="background-color: #97DB9A" />
      <col style="background-color:#DCC48E; border:4px solid #C1437A"/>
      <col style="width: 42px" span="2"/>
    </colgroup>
    <tr>
      <td>&nbsp;</td>
      <th>Mon</th>
      <th>Tues</th>
      <th>Wed</th>
      <th>Thurs</th>
      <th>Fri</th>
      <th>Sat</th>
      <th>Sun</th>
    </tr>
    <tr>
      <th>1st period</th>
      <td>English</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>2nd period</th>
      <td>English</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>3rd period</th>
      <td>&nbsp;</td>
      <td>German</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>4th period</th>
      <td>&nbsp;</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>English</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</body>

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

---

## 2. TABLES - ADVANCED FEATURES AND ACCESSIBILITY

### 2.1. Adding a caption to your table with `<caption>`

- You can give your table a caption by putting it inside a `<caption>` element and nesting that inside the `<table>` element. You should put it just below the opening `<table>` tag.

```html
<table>
  <caption>
    Dinosaurs in the Jurassic period
  </caption>

  …
</table>
```

- As you can infer from the brief example above, the caption is meant to contain a description of the table contents.
- This is useful for all readers wishing to get a quick idea of whether the table is useful to them as they scan the page, but particularly for blind users.
- Rather than have a screen reader read out the contents of many cells just to find out what the table is about, the user can rely on a caption and then decide whether or not to read the table in greater detail.
- A caption is placed directly beneath the `<table>` tag.
- **Note:** The summary attribute can also be used on the `<table>` element to provide a description — this is also read out by screen readers. We'd recommend using the `<caption>` element instead, however, as summary is deprecated and can't be read by sighted users (it doesn't appear on the page).

<body>
  <h2>School timetable</h1>

  <table>
    <caption> Language Teacher's Timetable
    <colgroup>
      <col />
      <col />
      <col style="background-color: #97DB9A"/>
      <col style="width: 42px"/>
      <col style="background-color: #97DB9A" />
      <col style="background-color:#DCC48E; border:4px solid #C1437A"/>
      <col style="width: 42px" span="2"/>
    </colgroup>
    <tr>
      <td>&nbsp;</td>
      <th>Mon</th>
      <th>Tues</th>
      <th>Wed</th>
      <th>Thurs</th>
      <th>Fri</th>
      <th>Sat</th>
      <th>Sun</th>
    </tr>
    <tr>
      <th>1st period</th>
      <td>English</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>2nd period</th>
      <td>English</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>3rd period</th>
      <td>&nbsp;</td>
      <td>German</td>
      <td>&nbsp;</td>
      <td>German</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <th>4th period</th>
      <td>&nbsp;</td>
      <td>English</td>
      <td>&nbsp;</td>
      <td>English</td>
      <td>Dutch</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</body>
<br>

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 2.2. Adding structure with `<thead>`, `<tfoot>`, and `<tbody>`

- As your tables get a bit more complex in structure, it is useful to give them more structural definition.
- One clear way to do this is by using `<thead>`, `<tfoot>`, and `<tbody>`, which allow you to mark up a header, footer, and body section for the table.
- These elements don't make the table any more accessible to screen reader users, and don't result in any visual enhancement on their own.
- They are however very useful for styling and layout — acting as useful hooks for adding CSS to your table.
- To give you some interesting examples, in the case of a long table you could make the table header and footer repeat on every printed page, and you could make the table body display on a single page and have the contents available by scrolling up and down.
- To use them:
  - The `<thead>` element must wrap the part of the table that is the header — this is usually the first row containing the column headings, but this is not necessarily always the case. If you are using `<col>`/`<colgroup>` element, the table header should come just below those.
  - The `<tfoot>` element needs to wrap the part of the table that is the footer — this might be a final row with items in the previous rows summed, for example. You can include the table footer right at the bottom of the table as you'd expect, or just below the table header (the browser will still render it at the bottom of the table).
  - The `<tbody>` element needs to wrap the other parts of the table content that aren't in the table header or footer. It will appear below the table header or sometimes footer, depending on how you decided to structure it.

- **Note:** `<tbody>` is always included in every table, implicitly if you don't specify it in your code. To check this, open up one of your previous examples that doesn't include `<tbody>` and look at the HTML code in your browser developer tools — you will see that the browser has added this tag for you. You might wonder why you ought to bother including it at all — you should, because it gives you more control over your table structure and styling.

**Example:**

```html
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>My spending record</title>
    <link href="minimal-table.css" rel="stylesheet" type="text/css">
    <style>
    </style>
  </head>
  <body>
    <h1>My spending record</h1>

      <table>
        <caption>How I chose to spend my money</caption>
          <tr>
            <th>Purchase</th>
            <th>Location</th>
            <th>Date</th>
            <th>Evaluation</th>
            <th>Cost (€)</th>
          </tr>
          <tr>
            <td>SUM</td>
            <td>118</td>
          </tr>
          <tr>
            <td>Haircut</td>
            <td>Hairdresser</td>
            <td>12/09</td>
            <td>Great idea</td>
            <td>30</td>
          </tr>
          <tr>
            <td>Lasagna</td>
            <td>Restaurant</td>
            <td>12/09</td>
            <td>Regrets</td>
            <td>18</td>
          </tr>
          <tr>
            <td>Shoes</td>
            <td>Shoeshop</td>
            <td>13/09</td>
            <td>Big regrets</td>
            <td>65</td>
          </tr>
          <tr>
            <td>Toothpaste</td>
            <td>Supermarket</td>
            <td>13/09</td>
            <td>Good</td>
            <td>5</td>
          </tr>
    </table>

  </body>
</html>
```

<table>
  <caption>How I chose to spend my money</caption>
    <tr>
      <th>Purchase</th>
      <th>Location</th>
      <th>Date</th>
      <th>Evaluation</th>
      <th>Cost (€)</th>
    </tr>
    <tr>
      <td>SUM</td>
      <td>118</td>
    </tr>
    <tr>
      <td>Haircut</td>
      <td>Hairdresser</td>
      <td>12/09</td>
      <td>Great idea</td>
      <td>30</td>
    </tr>
    <tr>
      <td>Lasagna</td>
      <td>Restaurant</td>
      <td>12/09</td>
      <td>Regrets</td>
      <td>18</td>
    </tr>
    <tr>
      <td>Shoes</td>
      <td>Shoeshop</td>
      <td>13/09</td>
      <td>Big regrets</td>
      <td>65</td>
    </tr>
    <tr>
      <td>Toothpaste</td>
      <td>Supermarket</td>
      <td>13/09</td>
      <td>Good</td>
      <td>5</td>
    </tr>
</table>

- It looks OK, but it could stand to be improved.
- The "SUM" row that contains a summation of the spent amounts seems to be in the wrong place, and there are some details missing from the code.
- Put the obvious headers row inside a `<thead>` element, the "SUM" row inside a `<tfoot>` element, and the rest of the content inside a `<tbody>` element.
- You'll see that adding the `<tfoot>` element has caused the "SUM" row to go down to the bottom of the table.
- Next, add a `colspan` attribute to make the "SUM" cell span across the first four columns, so the actual number appears at the bottom of the "Cost" column.
- Let's add some simple extra styling to the table, to give you an idea of how useful these elements are for applying CSS. Inside the head of your HTML document, you'll see an empty `<style>` element. Inside this element, add the following lines of CSS code:

```css
tbody {
  font-size: 95%;
  font-style: italic;
}

tfoot {
  font-weight: bold;
}
```

- Have a look at the result. If the `<tbody>` and `<tfoot>` elements weren't in place, you'd have to write much more complicated selectors/rules to apply the same styling.

<table>
  <caption>How I chose to spend my money</caption>
    <thead>
      <tr>
        <th>Purchase</th>
        <th>Location</th>
        <th>Date</th>
        <th>Evaluation</th>
        <th>Cost (€)</th>
      </tr>
    </thead>
    <tfoot style="font-weight: bold"/>
      <tr>
        <td colspan="4">SUM</td>
        <td>118</td>
      </tr>
    </tfoot>
    <tbody style="font-size: 95%; font-style: italic"/>
      <tr>
        <td>Haircut</td>
        <td>Hairdresser</td>
        <td>12/09</td>
        <td>Great idea</td>
        <td>30</td>
      </tr>
      <tr>
        <td>Lasagna</td>
        <td>Restaurant</td>
        <td>12/09</td>
        <td>Regrets</td>
        <td>18</td>
      </tr>
      <tr>
        <td>Shoes</td>
        <td>Shoeshop</td>
        <td>13/09</td>
        <td>Big regrets</td>
        <td>65</td>
      </tr>
      <tr>
        <td>Toothpaste</td>
        <td>Supermarket</td>
        <td>13/09</td>
        <td>Good</td>
        <td>5</td>
      </tr>
    </tbody>
</table>

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 2.3.Nesting tables

- It is possible to nest a table inside another one, as long as you include the complete structure, including the `<table>` element.
- This is generally not really advised, as it makes the markup more confusing and less accessible to screen reader users, and in many cases you might as well just insert extra cells/rows/columns into the existing table.
- It is however sometimes necessary, for example if you want to import content easily from other sources.
- The following markup shows a simple nested table:

```html
<table id="table1">
  <tr>
    <th>title1</th>
    <th>title2</th>
    <th>title3</th>
  </tr>
  <tr>
    <td id="nested">
      <table id="table2">
        <tr>
          <td>cell1</td>
          <td>cell2</td>
          <td>cell3</td>
        </tr>
      </table>
    </td>
    <td>cell2</td>
    <td>cell3</td>
  </tr>
  <tr>
    <td>cell4</td>
    <td>cell5</td>
    <td>cell6</td>
  </tr>
</table>
```

<table id="table1">
  <tr>
    <th>title1</th>
    <th>title2</th>
    <th>title3</th>
  </tr>
  <tr>
    <td id="nested">
      <table id="table2">
        <tr>
          <td>cell1</td>
          <td>cell2</td>
          <td>cell3</td>
        </tr>
      </table>
    </td>
    <td>cell2</td>
    <td>cell3</td>
  </tr>
  <tr>
    <td>cell4</td>
    <td>cell5</td>
    <td>cell6</td>
  </tr>
</table>

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 2.4. Tables for visually impaired users

- A table can be a handy tool, for giving us quick access to data and allowing us to look up different values.
- For example, it takes only a short glance at the table below to find out how many rings were sold in Gent during August 2016.

![Image](assets/images/table1a.png)

- To understand its information we make visual associations between the data in this table and its column and/or row headers.
- But what if you cannot make those visual associations? How then can you read a table like the above? Visually impaired people often use a screen reader that reads out information on web pages to them.
- This is no problem when you're reading plain text but interpreting a table can be quite a challenge for a blind person. Nevertheless, with the proper markup we can replace visual associations by programmatic ones.
- **Note:** There are around 253 Million people living with Visual Impairment according to WHO data in 2017.
- Screen readers will identify all headers and use them to make programmatic associations between those headers and the cells they relate to.
- The combination of column and row headers will identify and interpret the data in each cell so that screen reader users can interpret the table similarly to how a sighted user does.
- The scope attribute can be added to the `<th>` element to tell screen readers exactly what cells the header is a header for — is it a header for the row it is in, or the column, for example? Looking back to our spending record example from earlier on, you could unambiguously define the column headers as column headers like this:

```html
<thead>
  <tr>
    <th scope="col">Purchase</th>
    <th scope="col">Location</th>
    <th scope="col">Date</th>
    <th scope="col">Evaluation</th>
    <th scope="col">Cost (€)</th>
  </tr>
</thead>
```

- And each row could have a header defined like this (if we added row headers as well as column headers):

```html
<tr>
  <th scope="row">Haircut</th>
  <td>Hairdresser</td>
  <td>12/09</td>
  <td>Great idea</td>
  <td>30</td>
</tr>
```

<table>
  <caption>How I chose to spend my money</caption>
    <thead>
      <tr>
        <th scope="col">Purchase</th>
        <th scope="col">Location</th>
        <th scope="col">Date</th>
        <th scope="col">Evaluation</th>
        <th scope="col">Cost (€)</th>
      </tr>
    </thead>
    <tfoot style="font-weight: bold"/>
      <tr>
        <td colspan="4">SUM</td>
        <td>118</td>
      </tr>
    </tfoot>
    <tbody style="font-size: 95%; font-style: italic"/>
      <tr>
        <th scope="row">Haircut</td>
        <td>Hairdresser</td>
        <td>12/09</td>
        <td>Great idea</td>
        <td>30</td>
      </tr>
      <tr>
        <th scope="row">Lasagna</td>
        <td>Restaurant</td>
        <td>12/09</td>
        <td>Regrets</td>
        <td>18</td>
      </tr>
      <tr>
        <th scope="row">Shoes</td>
        <td>Shoeshop</td>
        <td>13/09</td>
        <td>Big regrets</td>
        <td>65</td>
      </tr>
      <tr>
        <th scope="row">Toothpaste</td>
        <td>Supermarket</td>
        <td>13/09</td>
        <td>Good</td>
        <td>5</td>
      </tr>
    </tbody>
</table>

- Screen readers will recognize markup structured like this, and allow their users to read out the entire column or row at once, for example.
- `scope` has two more possible values — colgroup and rowgroup.
- These are used for headings that sit over the top of multiple columns or rows.
- If you look back at the "Items Sold August 2016" table at the start of this section of the article, you'll see that the "Clothes" cell sits above the "Trousers", "Skirts", and "Dresses" cells.
- All of these cells should be marked up as headers (`<th>`), but "Clothes" is a heading that sits over the top and defines the other three subheadings.
- "Clothes" therefore should get an attribute of `scope="colgroup"`, whereas the others would get an attribute of `scope="col"`.
- An alternative to using the scope attribute is to use `id` and `headers` attributes to create associations between headers and cells. The way they are used is as follows:
  - You add a unique `id` to each `<th>` element.
  - You add a headers attribute to each `<td>` element. Each headers attribute has to contain a list of the ids of all the `<th>` elements that act as a header for that cell, separated by spaces.
- This gives your HTML table an explicit definition of the position of each cell in the table, defined by the header(s) for each column and row it is part of, kind of like a spreadsheet. For it to work well, the table really needs both column and row headers.
- Returning to our spending costs example, the previous two snippets could be rewritten like this:

```html
<thead>
  <tr>
    <th id="purchase">Purchase</th>
    <th id="location">Location</th>
    <th id="date">Date</th>
    <th id="evaluation">Evaluation</th>
    <th id="cost">Cost (€)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th id="haircut">Haircut</th>
    <td headers="location haircut">Hairdresser</td>
    <td headers="date haircut">12/09</td>
    <td headers="evaluation haircut">Great idea</td>
    <td headers="cost haircut">30</td>
  </tr>

  …
</tbody>
```

- **Note:** This method creates very precise associations between headers and data cells but it uses a lot more markup and does not leave any room for errors. The scope approach is usually enough for most tables.

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>

### 2.5. Examples of scopes and headers

- The above "Items Sold August 2016" table with `scope`:

```html
<body>
  <h1>Items sold summary</h1>

  <table>
    <caption>Items Sold August 2016</caption>
    <thead>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <th colspan="3" scope="colgroup">Clothes</th>
        <th colspan="2" scope="colgroup">Accessories</th>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <th scope="col">Trousers</th>
        <th scope="col">Skirts</th>
        <th scope="col">Dresses</th>
        <th scope="col">Bracelets</th>
        <th scope="col">Rings</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th rowspan="3" scope="rowgroup">Belgium</th>
        <th scope="row">Antwerp</th>
        <td>56</td>
        <td>22</td>
        <td>43</td>
        <td>72</td>
        <td>23</td>
      </tr>
      <tr>
        <th scope="row">Gent</th>
        <td>46</td>
        <td>18</td>
        <td>50</td>
        <td>61</td>
        <td>15</td>
      </tr>
      <tr>
        <th scope="row">Brussels</th>
        <td>51</td>
        <td>27</td>
        <td>38</td>
        <td>69</td>
        <td>28</td>
      </tr>
      <tr>
        <th rowspan="2" scope="rowgroup">The Netherlands</th>
        <th scope="row">Amsterdam</th>
        <td>89</td>
        <td>34</td>
        <td>69</td>
        <td>85</td>
        <td>38</td>
      </tr>
      <tr>
        <th scope="row">Utrecht</th>
        <td>80</td>
        <td>12</td>
        <td>43</td>
        <td>36</td>
        <td>19</td>
      </tr>
    </tbody>
  </table>
</body>
```

- The above "Items Sold August 2016" table with `id` and `header`:

```html
<body>
  <h1>Items sold summary</h1>

  <table>
    <caption>Items Sold August 2016</caption>
    <thead>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <th colspan="3" id="clothes">Clothes</th>
        <th colspan="2" id="accessories">Accessories</th>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <th id="trousers">Trousers</th>
        <th id="skirts">Skirts</th>
        <th id="dresses">Dresses</th>
        <th id="bracelets">Bracelets</th>
        <th id="rings">Rings</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th rowspan="3" id="belgium">Belgium</th>
        <th id="antwerp">Antwerp</th>
        <td headers="clothes trousers belgium antwerp">56</td>
        <td headers="clothes skirts belgium antwerp">22</td>
        <td headers="clothes dresses belgium antwerp">43</td>
        <td headers="accessories bracelets belgium antwerp">72</td>
        <td headers="accessories rings belgium antwerp">23</td>
      </tr>
      <tr>
        <th id="gent">Gent</th>
        <td headers="clothes trousers belgium gent">46</td>
        <td headers="clothes skirts belgium gent">18</td>
        <td headers="clothes dresses belgium gent">50</td>
        <td headers="accessories bracelets belgium gent">61</td>
        <td headers="accessories rings belgium gent">15</td>
      </tr>
      <tr>
        <th id="brussels">Brussels</th>
        <td headers="clothes trousers belgium brussels">51</td>
        <td headers="clothes skirts belgium brussels">27</td>
        <td headers="clothes dresses belgium brussels">38</td>
        <td headers="accessories bracelets belgium brussels">69</td>
        <td headers="accessories rings belgium brussels">28</td>
      </tr>
      <tr>
        <th rowspan="2" id="netherlands">The Netherlands</th>
        <th id="amsterdam">Amsterdam</th>
        <td headers="clothes trousers netherlands amsterdam">89</td>
        <td headers="clothes skirts netherlands amsterdam">34</td>
        <td headers="clothes dresses netherlands amsterdam">69</td>
        <td headers="accessories bracelets netherlands amsterdam">85</td>
        <td headers="accessories rings netherlands amsterdam">38</td>
      </tr>
      <tr>
        <th id="utrecht">Utrecht</th>
        <td headers="clothes trousers netherlands utrecht">80</td>
        <td headers="clothes skirts netherlands utrecht">12</td>
        <td headers="clothes dresses netherlands utrecht">43</td>
        <td headers="accessories bracelets netherlands utrecht">36</td>
        <td headers="accessories rings netherlands utrecht">19</td>
      </tr>
    </tbody>
  </table>
</body>
```

<div style="text-align: right">

[BACK TO TOP](#table-of-contents)

</div>
