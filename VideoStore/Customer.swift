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
    
        var index = 0
        for rental in rentals {
            var thisAmount: Double = 0;
    
            // determines the amount for each line
            switch rental.getMovie().getPriceCode() {
                case Movie.REGULAR:
                    thisAmount += 2;
                    if rental.getDaysRented() > 2 {
                        thisAmount += Double(rental.getDaysRented() - 2) * 1.5
                    }
                case Movie.NEW_RELEASE:
                    thisAmount += Double(rental.getDaysRented()) * 3
                case Movie.CHILDRENS:
                    thisAmount += 1.5
                    if rental.getDaysRented() > 3 {
                        thisAmount += Double(rental.getDaysRented() - 3) * 1.5
                    }
                default:
                    break
            }
    
            frequentRenterPoints+=1;
    
            if rental.getMovie().getPriceCode() == Movie.NEW_RELEASE
                && rental.getDaysRented() > 1 {
                frequentRenterPoints+=1;
            }
    
            result += "\t" + rental.getMovie().getTitle() + "\t"
                + String(thisAmount) + "\n";
            totalAmount += thisAmount;
            index+=1
        }
    
        result += "You owed " + String(totalAmount) + "\n";
        result += "You earned " + String(frequentRenterPoints) + " frequent renter points\n";
        
        return result;
    }
    
    
    private var name: String
    private var rentals: [Rental] = []
}
