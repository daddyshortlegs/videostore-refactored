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
        var frequentRenterPoints: Int = 0;
        
        var result = "Rental Record for " + getName() + "\n";
    
        for rental in rentals {
            let thisAmount = rental.determineAmount(daysRented: rental.getDaysRented())
            frequentRenterPoints += rental.getFrequentRenterPoints()
    
            result += "\t" + rental.getTitle() + "\t" + String(thisAmount) + "\n";
        }

        result += "You owed " + String(calculateTotal()) + "\n";
        result += "You earned " + String(frequentRenterPoints) + " frequent renter points\n";
        
        return result;
    }
    
    func calculateTotal() -> Double {
        var total: Double = 0
        for rental in rentals {
            total += rental.determineAmount(daysRented: rental.getDaysRented())
        }
        return total
    }
}
