class ChildrensMovie : Rental {
    
    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.CHILDRENS, daysRented: daysRented)
    }

    override func determineAmount(daysRented: Int) -> Double {
        var thisAmount = 1.5
        if daysRented > 3 {
            thisAmount += Double(daysRented - 3) * 1.5
        }
        return thisAmount
    }
}
