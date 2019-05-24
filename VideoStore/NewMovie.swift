class NewMovie : Rental {
    
    func rentalLimit() -> Int {
        return 0
    }

    override func determineAmount() -> Double {
        var thisAmount: Double = 0
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * 3
        }
        return thisAmount
    }
    
    override func getFrequentRenterPoints() -> Int {
        return getDaysRented() > 1 ? 2 : 1
    }
}
