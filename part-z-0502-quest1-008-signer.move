/*
In a script (a set of instructions for the blockchain), you can use the std::signer module to perform operations on signer values.

The signer::address_of(&signer) function gives you the address wrapped by the signer, and signer::borrow_address(&signer) gives you a reference to the address.

Now it's our turn to add the signer as a parameter to our function shores and check if the signer of the function shores is equal to address of @0x42 using signer::address_of(&s) == @0x42.

Tip: You can use assert! keyword to perform the check condition.

If the check condition is true the function will be executed further, if not the function will return 0 and revert the transaction.

*/

module robinson::my_shore {

    use std::signer;

    struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u64>,
    }
    
    fun shores(s: signer) {
        assert!(signer::address_of(&s) == @0x42, 0);
    }
 }
