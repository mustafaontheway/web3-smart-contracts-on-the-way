address hello_blockchain {

    module Daily {

        use std::debug::print;
        use std::string::{utf8};

        fun check(x: u128, y: u128) {

            if (x == y) {

                print(&utf8(b"Two numbers are equal!"));

            } else {
                print(&utf8(b"Two numbers are NOT equal!"));
            };
        }


        #[test]
        fun testing_daily() {
    
            check(5, 222); //[debug] "Two numbers are NOT equal!"

            //check(100, 100);
        }
    }

}

// aptos move test
