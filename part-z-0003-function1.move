address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun sum(a: u128, b: u128, c: u128) : u128 {

            a + b + c
        }


        #[test]
        fun testing_daily() {
          
            let result = sum(100, 10_000, 100_000_000);

            print(&result); // [debug] 100010100
        }
    }
}

