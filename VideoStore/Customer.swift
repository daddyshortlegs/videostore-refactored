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
        var result = createHeader()
        result += createBody()
        result += createFooter()
        return result;
    }
    
    func createHeader() -> String {
        return "Rental Record for \(getName())\n"
    }
    
    func createBody() -> String {
        var result = ""
        for rental in rentals {
            result += "\t\(rental.getTitle())\t\(String(rental.determineAmount()))\n";
        }
        return result
    }

    func createFooter() -> String {
        var result = "You owed \(String(calculateTotal()))\n"
        result += "You earned \(String(calculateFrequentRenterPoints())) frequent renter points\n"
        return result
    }
    
    func calculateTotal() -> Double {
        return rentals.reduce(0) { $0 + $1.determineAmount() }
    }
    
    func calculateFrequentRenterPoints() -> Int {
        return rentals.reduce(0) { $0 + $1.getFrequentRenterPoints() }
    }
}
