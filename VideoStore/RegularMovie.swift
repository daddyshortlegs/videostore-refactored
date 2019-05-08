class RegularMovie : Rental {
    override func determineAmount() -> Double {
        var thisAmount: Double = 2
        if getDaysRented() > 2 {
            thisAmount += Double(getDaysRented() - 2) * 1.5
        }
        return thisAmount
    }
}
