class ChildrensMovie : Rental {
    
    func rentalLimit() -> Int {
        return 3
    }

    override func determineAmount() -> Double {
        var thisAmount = 1.5
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * 1.5
        }
        return thisAmount
    }
}
