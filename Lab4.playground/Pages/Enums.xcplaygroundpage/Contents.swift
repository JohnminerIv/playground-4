//: [Previous](@previous)
import UIKit
/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit {
    case clubs
    case spades
    case diamonds
    case hearts
}

/*:
 Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.
 */
var cardInHand: Suit = Suit.hearts
print(cardInHand)

/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */

cardInHand = Suit.spades
print(cardInHand)
/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */
func getFortune(cardSuit: Suit) -> String {
    switch cardSuit {
    case .clubs:
    return "You feel like your going to have a bad time\n"
    case .spades:
    return "You feel your sins crawling on your back\n"
    case .diamonds:
    return "Do you like jazz?\n"
    case .hearts:
    return "\"it's a beautiful day outside. birds are singing, flowers are blooming... \non days like these, kids like you... \nShould be burning in hell.\" ~ Sans\n"
    }
}
print(getFortune(cardSuit: Suit.clubs),
getFortune(cardSuit: Suit.diamonds),
getFortune(cardSuit: Suit.hearts),
getFortune(cardSuit: Suit.spades))

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */
struct Card {
    var suit: Suit
    enum Value {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine
        case ten
        case jack
        case queen
        case king
    }
    var value: Value
}

print(Card(suit: .clubs, value: .ace))
print(Card(suit: .spades, value: .king))
/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */

