class RegularMovie : Rental {
    
    func rentalLimit() -> Int {
        return 2
    }
    
    override func determineAmount() -> Double {
        var thisAmount: Double = 2
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * 1.5
        }
        return thisAmount
    }
}
