address hello_blockchain {

    module Daily {

        use std::debug::print;

        fun daily() {

            let x: bool = true;
            let y: bool = false;
            let z: bool = true;

            let result1: bool = x && y;

            let result2: bool = !(x && y) || (x || z);

            print(&result1);
            print(&result2);

        }


        #[test]
        fun testing_daily() {
    
            daily(); 

            // [debug] false
            // [debug] true
        }
    }

}

// aptos move test
