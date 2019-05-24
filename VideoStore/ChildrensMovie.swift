class ChildrensMovie : Rental {
    override func rentalLimit() -> Int {
        return 3
    }
    
    override func initialCost() -> Double {
        return 1.5
    }
}
