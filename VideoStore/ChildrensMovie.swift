class ChildrensMovie : Rental {
    
    override func rentalLimit() -> Int {
        return 3
    }

    override func determineAmount() -> Double {
        var thisAmount = initialCost()
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * 1.5
        }
        return thisAmount
    }
    
    override func initialCost() -> Double {
        return 1.5
    }

}
