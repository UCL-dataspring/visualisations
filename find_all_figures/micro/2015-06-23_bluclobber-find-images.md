______
# Research Question: how does the size of images change across the duration of a book?

______
## Files
Seven .yml files which contain year of publication, name of book, publisher, place of publication, book code, x position of image, y position of image, width of image, height of image, area of image (area = (area of image / area of page) times 100)

______
## Hacky data massaging

Identify a book we care about. Find the book code. This should be a 9 book digit reference. If you don't have a 9 digit reference, add prefix with zeros until you! For example `2322267` becomes `002322267`

Open the Unix Shell. This is the 'Terminal' on Linux and OS, we recommend [Git Bash](https://msysgit.github.io/) for Windows users. Navigate to the folder you files are in. 

Write: `grep BOOKREFERENCENUMBER *.yml` and hit enter. The output will tell which file the image data for the book is in.

Open the relevant file.

Do a `ctrl+F` to search for the book reference. Copy and paste all the lines below the book reference into a new text file (Word, Notepad++, whatever you prefer!).

Remove any clutter (hypens, square brackets, quotation mark) using find/replace, replacing with a space. Do not remove the commas, we will need those... 

Copy and past the remaining text into a plain text editor and save as a .csv file (name of file `BOOKREFERENNCENUMBER.csv`)

Open your .csv file in Excel/Calc/Sheets/Numbers.

Add a top row with titles `PAGE_NO`, `X`, `Y`, `WIDTH`, `HEIGHT`, `IMAGE_SIZE`

Sort your .csv file by `PAGE_NO` (ascending). Trailing spaces may make the sort incorrect, so fix in some way (manually or using [Open Refine](http://openrefine.org/))

Make a column that captures the page change over time (manually or using another tool)

Create a column for the book reference number. For multi-volume works add a suffix (such as `_1`).

Sort your columns so they are logical.

Save!

______
## Make pretty pictures

There are options here. One is to make a graph in Excel/Calc/Sheets/Numbers (remember to save out of .csv to capture your graphs) with `IMAGE_SIZE` on the y axis and image number on the x axis.

This method is unlikely, depending on your spreadsheet software, to capture the position of the image in a book.

To do this you can use R. For example you can use `imagesinbook_bypage_bysize.R`
