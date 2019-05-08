class NewMovie : Rental {
    override func determineAmount() -> Double {
        return Double(getDaysRented()) * 3
    }
    
    override func getFrequentRenterPoints() -> Int {
        return getDaysRented() > 1 ? 2 : 1
    }
}
