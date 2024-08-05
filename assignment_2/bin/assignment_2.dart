// [18:44, 26/07/2024] Miss Treasure: Weekend Challenge: Library Book Management System

// Problem Statement:

// You are developing a simple library management system where users can borrow and return books. The system should keep track of the books currently borrowed by each user. Write a program in Dart that includes the following functionalities:

// 1. Add a book to the library.
// 2. Borrow a book from the library.
// 3. Return a book to the library.
// 4. Check which books are currently borrowed by a user.
// [18:48, 26/07/2024] Miss Treasure: Additional Functionalities:

// 5. Track Due Dates for Borrowed Books
// 6. Handle Multiple Copies of the Same Book
// 7. User Authentication



// // creating a class for books
// class Book{
//   Book(this.copies, this.title,this.id);
//   String title;
//   int copies;
//   String id;
//  }



// class User{
//  User(this.name, this.password);
//  String name;
//  String password;

//  }

// class Library{
//  final Map< String,int>mybooks={};

// //a method to add books

// }

// void borrowBook(String username, String title) {
//     if (!users.containsKey(username)) {
//       print('User $username is not registered.');
//       return;
//     }
//     if (!books.containsKey(title) || books[title]!.copies == 0) {
//       print('Book "$title" is not available.');
//       return;
//     }
//     User user = users[username]!;
//     Book book = books[title]!;

//     book.copies -= 1;
//     user.borrowedBooks[book] = DateTime.now().add(Duration(days: 14)); // 2 weeks due date
//     print('User $username borrowed "$title".');
//   }


// void borrowBook(String userId, String bookId) {
//     if (!users.containsKey(userId)) {
//       print('User not found!');
//       return;
//     }

//     if (!books.containsKey(bookId) || books[bookId]!.copiesAvailable == 0) {
//       print('Book not available!');
//       return;
//     }

//     users[userId]!.borrowedBooks[bookId] = DateTime.now().add(Duration(days: 14));
//     books[bookId]!.copiesAvailable--;
//     print('${users[userId]!.name} borrowed ${books[bookId]!.title}');
//   }