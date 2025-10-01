// Now it's your turn, can your island have a river... or not? So we need to add a has_river variable of type bool to the Move my_shore module.

module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
    }

}
