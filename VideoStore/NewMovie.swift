class NewMovie : Rental {
    override func rentalLimit() -> Int {
        return 0
    }

    override func getFrequentRenterPoints() -> Int {
        return getDaysRented() > 1 ? 2 : 1
    }

    override func multiplier() -> Double {
        return 3
    }
}
