class ChildrensMovie : Rental {
    override func determineAmount() -> Double {
        var thisAmount = 1.5
        if getDaysRented() > 3 {
            thisAmount += Double(getDaysRented() - 3) * 1.5
        }
        return thisAmount
    }
}
