class NewMovie : Rental {

    public init(title: String, daysRented: Int) {
        super.init(title: title, priceCode: Rental.NEW_RELEASE, daysRented: daysRented)
    }
    
    override func determineAmount() -> Double {
        return Double(getDaysRented()) * 3
    }
    
    override func getFrequentRenterPoints() -> Int {
        var frequentRenterPoints = 1
        
        if getDaysRented() > 1 {
            frequentRenterPoints += 1
        }
        
        return frequentRenterPoints

    }
}
