public class Rental {
    public static let CHILDRENS: Int = 2
    public static let REGULAR: Int = 0
    public static let NEW_RELEASE: Int = 1
    
    private var daysRented: Int
    private var title: String
    private var priceCode: Int

    public init(title: String, priceCode: Int, daysRented: Int) {
        self.title = title;
        self.priceCode = priceCode;
        self.daysRented = daysRented
    }
    
    public func getPriceCode() -> Int {
        return priceCode;
    }
    
    public func getTitle() -> String {
        return title;
    }

    public func getDaysRented() -> Int {
        return daysRented
    }
    
    public func determineAmount(daysRented: Int) -> Double {
        return 0
    }
}

