class RegularMovie : Rental {
    override func initialCost() -> Double {
        return 2
    }

    override func rentalLimit() -> Int {
        return 2
    }
}
