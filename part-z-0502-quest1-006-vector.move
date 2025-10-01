// Now it's your turn, let's add more daily_visitors to your Island....So we need to add daily_visitors variable of type vector<u64> to the Move my_shore module.

module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }

}
