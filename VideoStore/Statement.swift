class Statement {
    let customer: Customer
    
    init(customer: Customer) {
        self.customer = customer
    }
    
    func print() -> String {
        return createHeader() + createBody() + createFooter()
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
        return "You owed \(calculateTotal())\n"
            + "You earned \(calculateFrequentRenterPoints()) frequent renter points\n"
    }
    
    func calculateTotal() -> Double {
        return customer.getRentals().reduce(0) { $0 + $1.determineAmount() }
    }
    
    func calculateFrequentRenterPoints() -> Int {
        return customer.getRentals().reduce(0) { $0 + $1.getFrequentRenterPoints() }
    }

}
