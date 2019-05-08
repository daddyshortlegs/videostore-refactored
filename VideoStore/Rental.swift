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

    func getDaysRented() -> Int {
        return daysRented
    }
    
    func determineAmount() -> Double {
        return 0
    }
    
    func getFrequentRenterPoints() -> Int {
        return 1
    }
}

