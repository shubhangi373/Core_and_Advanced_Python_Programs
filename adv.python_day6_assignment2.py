""" Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 

 1. Class Attribute: ○ available_movies: A list of all movies available in the library.

 2. Instance Attributes: ○ member_name: The name of the library member. ○ borrowed_movies: A list of movies borrowed by the member. 

3. Methods: ○ borrow_movie(self, movie): Borrows a movie from the library if available. 

 ○ return_movie(self, movie): Returns a movie to the library.

 ○ view_borrowed_movies(self): Prints a list of movies borrowed by the member """

class MovieLibrary:
    # Class attribute: List of available movies in the library
    available_movies = []

    def __init__(self, member_name):
        # Instance attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        """Borrows a movie from the library if it's available."""
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)  # Add movie to borrowed list
            MovieLibrary.available_movies.remove(movie)  # Remove from available movies
            print(f"{self.member_name} has borrowed '{movie}'.")
        else:
            print(f"Sorry, '{movie}' is not available in the library.")

    def return_movie(self, movie):
        """Returns a movie to the library."""
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)  # Remove from borrowed list
            MovieLibrary.available_movies.append(movie)  # Add back to available movies
            print(f"{self.member_name} has returned '{movie}'.")
        else:
            print(f"{self.member_name} did not borrow '{movie}', so it can't be returned.")

    def view_borrowed_movies(self):
        """Prints a list of movies borrowed by the member."""
        if self.borrowed_movies:
            print(f"{self.member_name} has borrowed the following movies:")
            for movie in self.borrowed_movies:
                print(f"- {movie}")
        else:
            print(f"{self.member_name} has not borrowed any movies.")


# Initialize the MovieLibrary with some available movies
MovieLibrary.available_movies = ["Inception", "The Dark Knight", "Titanic", "The Matrix", "The Godfather"]

# Create a library member
member1 = MovieLibrary("Alice")

# View available movies
print("Available movies in the library:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")

# Member borrows a movie
member1.borrow_movie("Inception")
member1.borrow_movie("Titanic")

# View borrowed movies by the member
member1.view_borrowed_movies()

# View available movies in the library after borrowing
print("\nAvailable movies in the library after borrowing:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")

# Member returns a movie
member1.return_movie("Inception")

# View borrowed movies after returning one
member1.view_borrowed_movies()

# View available movies in the library after returning a movie
print("\nAvailable movies in the library after returning:")
for movie in MovieLibrary.available_movies:
    print(f"- {movie}")

# Try to return a movie that wasn't borrowed
member1.return_movie("The Matrix")

"""output:
Available movies in the library:
- Inception
- The Dark Knight
- Titanic
- The Matrix
- The Godfather
Alice has borrowed 'Inception'.
Alice has borrowed 'Titanic'.
Alice has borrowed the following movies:
- Inception
- Titanic

Available movies in the library after borrowing:
- The Dark Knight
- The Matrix
- The Godfather
Alice has returned 'Inception'.
Alice has borrowed the following movies:
- Titanic

Available movies in the library after returning:
- The Dark Knight
- The Matrix
- The Godfather
- Inception
Alice did not borrow 'The Matrix', so it can't be returned """

