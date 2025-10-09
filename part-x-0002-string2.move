address hello_blockchain {

    module Daily {

        use std::debug::print;
        use std::string::{utf8, String};

        fun learning_daily() {

            let my_name: vector<u8> = b"Mustafa Buyukdereli";

            print(&my_name); // [debug] 0x4d75737461666120427579756b646572656c69
            
        }


        #[test]
        fun testing_daily() {
            
            learning_daily(); 
        }
    }
}

