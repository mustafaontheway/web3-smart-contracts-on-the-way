address hello_blockchain {

    module Daily {

        // we can define errors we want to catch

        const E_NUM_NOT_ODD: u8 = 22;

        fun is_odd(num: u128) {

            assert!(num % 2 != 0, 22);
        }


        #[test]
        fun testing_daily() {
    
            //is_odd(23); //Test result: OK. Total tests: 1; passed: 1; failed: 0

            is_odd(44444444);
        }
    }

}

// aptos move test
