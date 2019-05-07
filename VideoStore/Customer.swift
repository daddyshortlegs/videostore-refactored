public class Customer {
    private var name: String
    private var rentals: [Rental] = []

    public init(name: String) {
        self.name = name
    }
    
    public func addRental(rental: Rental) {
        rentals.append(rental)
    }
    
    public func getName() -> String {
        return name
    }
    
    public func statement() -> String {
        var result = "Rental Record for " + getName() + "\n";
    
        for rental in rentals {
            let thisAmount = rental.determineAmount()
            result += "\t" + rental.getTitle() + "\t" + String(thisAmount) + "\n";
        }

        result += "You owed " + String(calculateTotal()) + "\n";
        result += "You earned " + String(calculateFrequentRenterPoints()) + " frequent renter points\n";
        
        return result;
    }
    
    func calculateTotal() -> Double {
        var total: Double = 0
        for rental in rentals {
            total += rental.determineAmount()
        }
        return total
    }
    
    func calculateFrequentRenterPoints() -> Int {
        var total = 0
        for rental in rentals {
            total += rental.getFrequentRenterPoints()
        }
        return total
    }

}
