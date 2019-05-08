public class Rental {
    private var daysRented: Int
    private var title: String

    public init(title: String, daysRented: Int) {
        self.title = title;
        self.daysRented = daysRented
    }
    
    public func getTitle() -> String {
        return title;
    }

    public func getDaysRented() -> Int {
        return daysRented
    }
    
    public func determineAmount() -> Double {
        return 0
    }
    
    public func getFrequentRenterPoints() -> Int {
        return 1
    }
}

