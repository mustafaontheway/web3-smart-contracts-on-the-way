address hello_blockchain {

    module Daily {

        use std::debug::print;
        use std::string::{utf8, String};

        fun learning_daily() {

            let my_name: String = utf8(b"Mustafa Buyukdereli");

            print(&my_name); // [debug] "Mustafa Buyukdereli"
            
        }


        #[test]
        fun testing_daily() {
            
            learning_daily(); 
        }
    }
}

