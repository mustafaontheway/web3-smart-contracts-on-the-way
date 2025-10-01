address hello_blockchain {

    module Daily {

        // we can define errors we want to catch

        const E_NUM_NOT_ODD: u64 = 22;

        use std::debug::print;
        use std::string::{utf8};

        fun is_odd(num: u128) {

            if (num % 2 != 0) {

                print(&utf8(b"Number is odd, NOT even!"));

            } else {

                abort E_NUM_NOT_ODD
            }

        }


        #[test]
        fun testing_daily() {
    
            //is_odd(23); // [debug] "Number is odd, NOT even!"

            is_odd(44444444);
        }
    }

}

// aptos move test
