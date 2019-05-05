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
            var thisAmount: Double = 0;
    
            var daysRented = rental.getDaysRented()
            // determines the amount for each line
            switch rental.getPriceCode() {
                case Rental.REGULAR:
                    var movie = RegularMovie()
                    thisAmount = movie.determineAmount(daysRented: daysRented);
                case Rental.NEW_RELEASE:
                    var movie = NewMovie()
                    thisAmount = movie.determineAmount(daysRented: daysRented)
                case Rental.CHILDRENS:
                    var movie = ChildrensMovie()
                    thisAmount = movie.determineAmount(daysRented: daysRented)
                default:
                    break
            }
    
            frequentRenterPoints+=1;
    
            if rental.getPriceCode() == Rental.NEW_RELEASE
                && rental.getDaysRented() > 1 {
                frequentRenterPoints+=1;
            }
    
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
