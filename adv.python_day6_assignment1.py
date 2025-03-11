""" Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 

1. Class Attributes: ○ total_books: A class attribute representing the total number of books available in the library. ○ all_books: A class attribute that stores a list of all books available. 

2. Instance Attributes: ○ name:Nameof the library member. ○ borrowed_books: A list to keep track of books borrowed by the member. 

3. Methods: ○ borrow_book(self, book): A method to borrow a book from the library. The method should: ■ Checkif the book is available

 ■ Addthebook to the member's borrowed list. 

 ■ Removethe book from the library's all_books list. 

 ■ Decrease total_books by 1

.■ If the book is not available, return a message saying "Book not available." ○ return_book(self, book): A method to return a book. The method should: 

 ■ Addthebook back to the library's all_books list.

 ■ Removethe book from the member's borrowed_books list. 

 ■ Increase total_books by 1. 

 4. Class Method: ○ view_library_books(cls): A class method that prints the total number of books and lists all available books."""

class Library:
    # Class attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        """Method to borrow a book from the library."""
        if book in Library.all_books:
            self.borrowed_books.append(book)  # Add the book to the member's borrowed list
            Library.all_books.remove(book)  # Remove the book from the library's list
            Library.total_books -= 1  # Decrease the total number of books in the library
            print(f"{self.name} has borrowed '{book}'.")
        else:
            print("Book not available.")
    
    def return_book(self, book):
        """Method to return a borrowed book to the library."""
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)  # Remove the book from the member's borrowed list
            Library.all_books.append(book)  # Add the book back to the library's list
            Library.total_books += 1  # Increase the total number of books in the library
            print(f"{self.name} has returned '{book}'.")
        else:
            print(f"{self.name} hasn't borrowed '{book}'.")

    @classmethod
    def view_library_books(cls):
        """Class method to view the total number of books and available books."""
        print(f"Total number of books in the library: {cls.total_books}")
        if cls.all_books:
            print("Available books in the library:")
            for book in cls.all_books:
                print(f"- {book}")
        else:
            print("No books are available in the library.")


# Initialize Library with books and total books
Library.all_books = ["The Great Gatsby", "1984", "To Kill a Mockingbird", "Harry Potter", "Moby Dick"]
Library.total_books = len(Library.all_books)

# Create a library member
member1 = Library("Alice")

# View library books
Library.view_library_books()

# Member borrows a book
member1.borrow_book("1984")
member1.borrow_book("Moby Dick")

# View library books again after borrowing
Library.view_library_books()

# Member returns a book
member1.return_book("1984")

# View library books again after returning
Library.view_library_books()

# Try to borrow a book that's not available
member1.borrow_book("1984")

# Try to return a book not borrowed
member1.return_book("The Great Gatsby")

""" output:

Total number of books in the library: 5
Available books in the library:
- The Great Gatsby
- 1984
- To Kill a Mockingbird
- Harry Potter
- Moby Dick
Alice has borrowed '1984'.
Alice has borrowed 'Moby Dick'.
Total number of books in the library: 3
Available books in the library:
- The Great Gatsby
- To Kill a Mockingbird
- Harry Potter
Alice has returned '1984'.
Total number of books in the library: 4
Available books in the library:
- The Great Gatsby
- To Kill a Mockingbird
- Harry Potter
- 1984
Alice has borrowed '1984'.
Alice hasn't borrowed 'The Great Gatsby' """
