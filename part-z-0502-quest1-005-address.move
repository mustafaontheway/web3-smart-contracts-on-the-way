// Now, let's focus on your island's location. To do this, we must include a shore_location variable of the address type in the Move my_shore module.

module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
    }

}
