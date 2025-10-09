address hello_blockchain {

    module Daily {

        use std::debug::print;

        const FIXED_COST_USD: u64 = 42_500;

        fun daily() {

            let sales1: u64 = 67_000;

            let result1 = sales1 - FIXED_COST_USD;

            print(&result1);
        }


        #[test]
        fun testing_daily() {

            daily(); // [debug] 24500
        }
    }

}

// aptos move test
