/*
A struct can have up to 4 abilities that determine how values of this type can be used:

Copy: Value can be copied or cloned by value.
Drop: Value can be dropped at the end of its scope.
Key: Value can be used as a key for global storage operations.
Store: Value can be stored inside global storage.
This helps in organizing and managing data in Move programs.

It is your turn to experiment with the code add a struct House with parameters no_of_members of type integer, house_loacation and house_owner of type address

*/

module robinson::my_shore {

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }

    struct House has store {
        no_of_members: u8,
        house_location: address,
        house_owner: address,
    }

}

