class Customer {
    private var name: String
    private var rentals: [Rental] = []

    init(name: String) {
        self.name = name
    }
    
    func addRental(rental: Rental) {
        rentals.append(rental)
    }
    
    func getName() -> String {
        return name
    }
    
    func statement() -> String {
        let statement = Statement(customer: self)
        return statement.print()
    }
    
    func getRentals() -> [Rental] {
        return rentals
    }
}
