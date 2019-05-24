class RegularMovie : Rental {
    
    override func determineAmount() -> Double {
        var thisAmount = initialCost()
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * multiplier()
        }
        return thisAmount
    }
    
    override func initialCost() -> Double {
        return 2
    }

    override func rentalLimit() -> Int {
        return 2
    }

}
