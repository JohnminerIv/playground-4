//: [Previous](@previous)
import Foundation
/*:
 ## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    func describe() {
        print("Title: \(self.title)\nAuthor: \(self.author)\nPages: \(self.pages)\nPrice: \(self.price)")
    }
}
var book = Book(title: "White wabbit", author: "Me", pages: 99999, price: 9.99)
book.describe()
/*:
 A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
 */
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func incrementLike() {
        likes += 1
    }
}
var post = Post(message: "Yeet", likes: 9000, numberOfComments: 2)
print(post.likes)
post.incrementLike()
print(post.likes)
// the likes are over 9000!
//: [Next](@next)
