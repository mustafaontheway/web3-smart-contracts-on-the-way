address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun sum(a: u64, b: u64): u64 {

            a + b
        }

        fun mult(a: u64, b: u64): u64 {

            a * b
        }

        #[test]
        fun test_sum() {

            let sum_test1 = sum(2024, 22000);

            print(&sum_test1); 
        }

        #[test]
        fun test_mult() {

            let mult_test1 = mult(10, 120);

            print(&mult_test1);
        }
    }

}
