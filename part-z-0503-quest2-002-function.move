/*
Let us play around with the function a little more, create a function named init_house with parameters to initialise the house struct. 
The parameters are named s for the signer, as well as members and location. 
I'll let you guess their type! 
This function must initialize a house... with all its parameters!

*/

module robinson::my_shore {

    use std::signer;

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }

    struct House has store , drop{
        no_of_members : u8,
        house_location : address,
        house_owner : address,
    }

    fun init_house(s: signer, members: u8, location: address) {
        assert!(signer::address_of(&s) == @0x42, 0);
        let _house = House{
            no_of_members : members,
            house_location : location,
            house_owner:signer::address_of(&s)
        };
    }
}
