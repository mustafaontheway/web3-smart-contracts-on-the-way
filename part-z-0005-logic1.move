address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun daily() {

            let x: u8 = 12;
            let y: u8 = 10;

            let result: bool = (x !=y) && (x >= y);

            print(&result);

        }


        #[test]
        fun testing_daily() {
    
            daily(); // [debug] true
        }
    }

}

// aptos move test
