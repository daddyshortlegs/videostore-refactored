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
        return customer.getRentals().reduce("") { $0 + createRow($1) }
    }
    
    func createRow(_ rental: Rental) -> String {
        return "\t\(rental.getTitle())\t\(rental.determineAmount())\n"
    }
    
    func createFooter() -> String {
        var result = "You owed \(calculateTotal())\n"
        result += "You earned \(calculateFrequentRenterPoints()) frequent renter points\n"
        return result
    }
    
    func calculateTotal() -> Double {
        return customer.getRentals().reduce(0) { $0 + $1.determineAmount() }
    }
    
    func calculateFrequentRenterPoints() -> Int {
        return customer.getRentals().reduce(0) { $0 + $1.getFrequentRenterPoints() }
    }

}
