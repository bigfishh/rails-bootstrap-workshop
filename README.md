
Implementation: 
1. Copy and paste the following into `app/views/layouts/application.html.erb`, inside of the `<head>` before the other stylesheets
```html
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
```
2. Copy and paste the following JavaScript script in to `app/views/layouts/application.html.erb`, place it at the end `<body>`
```html
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
```

Typography 
    - Sizing 
        - `<h1>` == `<div class="h1">`
        - `<div class="display <number from 1-4>`
```html
<h1>This is the same as the div below with the class of h1</h1>
<div class="h1">Same as above. Used in situations where you want to match the style of h1 but can't use it for some reason</div>
<div class="display <choose from 1-5>"> These are all bigger than h1s </div>s
```

# Rails Bootstrap Workshop

## What is Bootstrap?
* Bootstrap is a CSS framework.
* CSS frameworks are libraries with CSS code already written for you. It allows for easier web design. 
* Most CSS frameworks comes with grid layouts, button/form design, and typography.
* Since there are a number of different designs and styles that comes with this library, in this walk-through we'll only be covering the basics.

## Implementation
* There's a number of different ways to implement Bootstrap into your application. 
* Here's what we're going to be doing in this walk-through: 
    1. Copy and paste the following CSS link, `Step 1`, into `app > views > layouts > application.html.erb`, inside of the `<head>` before the other stylesheets
    2. Copy and paste the following JavaScript script, `Step 2`, in to `app > views > layouts > application.html.erb`, place it at the end `<body>`

```html
Step 1:
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
```
```html
Step 2:
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
```
* After saving your files and refreshing your browser, you should already notice some changes in your website.This is because Bootstrap overwrites default browser styles. `browser style > bootstrap style > custom css`

### Basics of Bootstrap
* Containers 
    * Adds padding to around your content. 
    * As you increase or decrease the size of your browser, your container is responsive to the changes. It will increase/decrese with it.  
```html 
    <div class="container">Wrap your content in a div tag with the class of container</div>
```
* Typography
    * Header class: 
        * You want your content to match the style of header tags in HTML but can't use a header tag
        * Bootstrap provides you with `.h1 - .h6`
        * `<div class="h1">Same as a regular h1 tag</div>`
    * Display heading: 
        * All display headings will be bigger than header tags. 
        * `<h1 class="display-1">Will be bigger than a regular h1 tag</h1>`. 
        * Goes from `display-1` to `display-4`, from biggest to smallest.
    * Other fun font styles: 
        * Mark tag: `<p><mark>This will be highlighted<mark> but this will not be since it's outside of the mark tag</p>`
        * Delete tag: `<p><del>This will have a strike-through across it.</del></p>`
        * Capitalization: 
            * text-type_to_choose_from
                * type to choose from:`lowercase`, `uppercase`, `capitalization`, and `monospace`
            * ex: `<div class="text-lowercase">EVERYTHING HERE WILL BE LOWERCASED</div>`
        * Text Modifiers: 
            * text-decoration-none: gets rid of link underlines
            * text-reset: gets rid of the color of something, ex: link, and makes it the same color as the parent container
        * Horizontal alignment: 
            * add this the to class of a tag.
            * text-justify
            * `text-break_point-position`
                * breakpoint: when the browser reaches what is visible to the user. 
                    * `sm`, `md`, `lg`, and `xl`
                * position: `left`, `right`, `center`
                * ex: `<div class="text-sm-center">When the viewport reaches sm, 576px, center the content within this div</div>`

    

