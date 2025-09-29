address hello_blockchain {

    // private - By default the functions in move are private.

    // public - A public function can be called by any function in any module or script.

    module Temp {

        use std::debug::print;

        //let's call a public function

        fun temp_print_sum(x: u128, y: u128, z: u128) : u128 {

            hello_blockchain::Daily::sum(x, y, z)
        }

        #[test]
        fun testing_temp() {

            let sum_test = temp_print_sum(3, 4, 5);

            print(&sum_test); // [debug] 12
        }

    }

    module Daily {

        //use std::debug::print;

        public fun sum(a: u128, b: u128, c: u128) : u128 {

            a + b + c
        }


        #[test]
        fun testing_daily() {
    

        }
    }

}

// aptos move test
