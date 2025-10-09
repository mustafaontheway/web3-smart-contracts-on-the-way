address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun sum_or_mult(x: u128, y: u128): (u128, u128) {

            (x + y, x * y)
        }


        #[test]
        fun testing_daily() {
    
            let (sum, mult) = sum_or_mult(500, 5);

            print(&sum); // [debug] 505

            print(&mult); // [debug] 2500
        }
    }

}

// aptos move test
