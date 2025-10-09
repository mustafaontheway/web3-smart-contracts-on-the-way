address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun sum_numbers(upper: u128) : u128 {

            let i: u128 = 1;

            let sum: u128 = 0;

            while (i <= upper) {

                sum += i;

                i += 1;
            };

            sum
        }


        #[test]
        fun testing_daily() {
    
            let sum_result1 = sum_numbers(7);

            print(&sum_result1); // [debug] 28
        }
    }

}

// aptos move test
