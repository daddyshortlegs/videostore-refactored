class Rental {
    private var daysRented: Int
    private var title: String

    init(title: String, daysRented: Int) {
        self.title = title;
        self.daysRented = daysRented
    }
    
    func getTitle() -> String {
        return title;
    }

    func determineAmount() -> Double {
        var thisAmount = initialCost()
        if getDaysRented() > rentalLimit() {
            thisAmount += Double(getDaysRented() - rentalLimit()) * multiplier()
        }
        return thisAmount
    }

    func initialCost() -> Double {
        return 0
    }

    func multiplier() -> Double {
        return 1.5
    }

    func getDaysRented() -> Int {
        return daysRented
    }
    
    func rentalLimit() -> Int {
        return 0
    }
    
    func getFrequentRenterPoints() -> Int {
        return 1
    }
}

