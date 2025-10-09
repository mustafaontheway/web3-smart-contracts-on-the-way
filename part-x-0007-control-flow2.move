address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun find_max(x: u128, y: u128) : u128 {

            if (x > y) {
                x

            } else {

                y
            }
        }


        #[test]
        fun testing_daily() {
    
            let r1 = find_max(555, 444);
            print(&r1); // [debug] 555

            let r2 = find_max(5555, 5555);
            print(&r2); // [debug] 5555
        }
    }

}

// aptos move test
