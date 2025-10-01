address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun sum_numbers(upper: u128) : u128 {

            let sum: u128 = 0;

            for (i in 1..(upper + 1)) { // Move is NOT Rust! Remember, in Rust we can 1..=n

                sum += i;
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
