class RegularMovie : Rental {
    
    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.REGULAR, daysRented: daysRented)
    }

    override func determineAmount(daysRented: Int) -> Double {
        var thisAmount: Double = 2
        if daysRented > 2 {
            thisAmount += Double(daysRented - 2) * 1.5
        }
        return thisAmount
    }
}
