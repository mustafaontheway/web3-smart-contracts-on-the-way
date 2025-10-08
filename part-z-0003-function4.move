address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun birth_calculator(year: u16, age: u8): u16 {

            year - (age as u16)
        }


        #[test]
        fun test_birth_calculator() {

            let his_birth_year = birth_calculator(2024, 19);

            print(&his_birth_year); // [debug] 2005
        }
    }

}
