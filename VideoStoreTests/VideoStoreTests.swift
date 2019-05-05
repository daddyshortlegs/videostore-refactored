import XCTest
@testable import VideoStore

class VideoStoreTests: XCTestCase {

    private var customer: Customer?

    override func setUp() {
        customer = Customer(name: "Fred")
    }

    func testSingleNewReleaseStatement() {
        customer?.addRental(rental: Rental(title: "The Cell", priceCode: Rental.NEW_RELEASE, daysRented: 3))
        XCTAssertEqual("Rental Record for Fred\n\tThe Cell\t9.0\nYou owed 9.0\nYou earned 2 frequent renter points\n", customer?.statement())
    }
    
    func testDualNewReleaseStatement() {
        customer?.addRental(rental: Rental(title: "The Cell", priceCode: Rental.NEW_RELEASE, daysRented: 3))
        customer?.addRental(rental: Rental(title: "The Tigger com.example.videostore.Movie", priceCode: Rental.NEW_RELEASE, daysRented: 3))
        XCTAssertEqual("Rental Record for Fred\n\tThe Cell\t9.0\n\tThe Tigger com.example.videostore.Movie\t9.0\nYou owed 18.0\nYou earned 4 frequent renter points\n", customer?.statement())
    }
    
    func testChildrensStatement() {
        customer?.addRental(rental: Rental(title: "The Tigger com.example.videostore.Movie", priceCode: Rental.CHILDRENS, daysRented: 3))
        customer?.addRental(rental: Rental(title: "Snowwhite", priceCode: Rental.CHILDRENS, daysRented: 4))
        XCTAssertEqual("Rental Record for Fred\n\tThe Tigger com.example.videostore.Movie\t1.5\n\tSnowwhite\t3.0\nYou owed 4.5\nYou earned 2 frequent renter points\n", customer?.statement())
    }
    
    func testMultipleRegularStatement() {
        customer?.addRental(rental: Rental(title: "Plan 9 from Outer Space", priceCode: Rental.REGULAR, daysRented: 1))
        customer?.addRental(rental: Rental(title: "8 1/2", priceCode: Rental.REGULAR, daysRented: 2))
        customer?.addRental(rental: Rental(title: "Eraserhead", priceCode: Rental.REGULAR, daysRented: 3))
    
        XCTAssertEqual("Rental Record for Fred\n\tPlan 9 from Outer Space\t2.0\n\t8 1/2\t2.0\n\tEraserhead\t3.5\nYou owed 7.5\nYou earned 3 frequent renter points\n", customer?.statement())
    }
    
}
