class ChildrensMovie : Rental {
    
    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.CHILDRENS, daysRented: daysRented)
    }

    override func determineAmount() -> Double {
        var thisAmount = 1.5
        if getDaysRented() > 3 {
            thisAmount += Double(getDaysRented() - 3) * 1.5
        }
        return thisAmount
    }
}
