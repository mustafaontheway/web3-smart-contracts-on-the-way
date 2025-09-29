address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun daily() {

            let age: u8 = 17;

            let current_year: u16 = 2025;

            let birth_year: u16 = current_year - (age as u16); // type casting (as)!

            print(&birth_year);
        }


        #[test]
        fun testing_daily() {
    
            daily(); // [debug] 2008
        }
    }

}

// aptos move test
