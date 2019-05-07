class RegularMovie : Rental {
    
    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.REGULAR, daysRented: daysRented)
    }

    override func determineAmount() -> Double {
        var thisAmount: Double = 2
        if getDaysRented() > 2 {
            thisAmount += Double(getDaysRented() - 2) * 1.5
        }
        return thisAmount
    }
}
