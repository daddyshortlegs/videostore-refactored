class Statement {
    let customer: Customer
    
    init(customer: Customer) {
        self.customer = customer
    }
    
    func print() -> String {
        var result = createHeader()
        result += createBody()
        result += createFooter()
        return result;
    }
    
    func createHeader() -> String {
        return "Rental Record for \(customer.getName())\n"
    }
    
    func createBody() -> String {
        var result = ""
        for rental in customer.getRentals() {
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
        return customer.getRentals().reduce(0) { $0 + $1.determineAmount() }
    }
    
    func calculateFrequentRenterPoints() -> Int {
        return customer.getRentals().reduce(0) { $0 + $1.getFrequentRenterPoints() }
    }

}
