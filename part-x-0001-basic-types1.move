address hello_blockchain {

    module Daily {

        //use std::debug::print;

        fun learning_daily() {

            let age: u8 = 17;

            let year: u16 = 2025;

            let expected_sales: u128 = 9_999_999_999;

        }


        #[test]
        fun testing_daily() {
            
            learning_daily(); 
        }
    }
}

