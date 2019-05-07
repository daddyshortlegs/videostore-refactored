class NewMovie : Rental {

    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.NEW_RELEASE, daysRented: daysRented)
    }
    
    override func determineAmount(daysRented: Int) -> Double {
        return Double(daysRented) * 3
    }
}
