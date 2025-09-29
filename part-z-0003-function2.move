address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun print_sum(a: u128, b: u128, c: u128) {

            let r: u128 = a + b + c;

            print(&r);
        }


        #[test]
        fun testing_daily() {
        
            print_sum(100, 500, 555_555_555); // [debug] 555556155
        }
    }
}

// aptos move test
