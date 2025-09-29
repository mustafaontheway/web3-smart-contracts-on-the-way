address hello_blockchain {

    //public(friend) - A public(friend) function can be called by any function in the same module and by the function of the module
    //which are explicitly defined in the friend list.

    module Temp1 {

        fun temp1_sum(a: u128, b: u128) {

            hello_blockchain::Daily::sum(a, b)
        }

        #[test]
        fun testing() {

            temp1_sum(5, 10); // [debug] 15
        }
    }

    // Not a friend!

    module Temp2 {

        fun temp2_sum(a: u128, b: u128) {

            hello_blockchain::Daily::sum(a, b)
        }

        #[test] 
        fun testing() {

            temp2_sum(5, 10) // Error!
        }
    }

    module Daily {

        friend hello_blockchain::Temp1; 

        use std::debug::print;

        public(friend) fun sum(x: u128, y: u128) {

            let r: u128 = x + y;

            print(&r);
        }


        #[test]
        fun testing_daily() {
    

        }
    }

}

// aptos move test
