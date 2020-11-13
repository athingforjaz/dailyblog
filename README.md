# Welcome to Daily Blog

This daily blog counts your words as you write them, then offers handy statistics about the amount of words you've written.

## To Run
Clone & run `rails server` from command line, then visit localhost:3000/blogs/ in your browser.

## Notes 11/12/2020
Morning:
- Changed method for /blogs/new form to "post" 
- Added authenticity token stuff in the same form
- This was previously working as a "get" with a .save, but wanted to try a new method.

Afternoon:
- Added /notes
- Currently in the process of figuring out fetch in JavaScript to post a note using shift + enter

## Notes 11/13/2020
- See extensive commenting in notes/index.html for how the fetch in JavaScript works in this context. The formatting of the JSON is important. 