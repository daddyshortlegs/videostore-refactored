public class Customer {
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
        var totalAmount: Double = 0
        var frequentRenterPoints: Int = 0;
        
        var result = "Rental Record for " + getName() + "\n";
    
        for rental in rentals {
            let thisAmount = rental.determineAmount(daysRented: rental.getDaysRented())
            frequentRenterPoints += rental.getFrequentRenterPoints()
    
            result += "\t" + rental.getTitle() + "\t" + String(thisAmount) + "\n";
            totalAmount += thisAmount;
        }
    
        result += "You owed " + String(totalAmount) + "\n";
        result += "You earned " + String(frequentRenterPoints) + " frequent renter points\n";
        
        return result;
    }
    
    
    private var name: String
    private var rentals: [Rental] = []
}
