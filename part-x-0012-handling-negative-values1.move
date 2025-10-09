address hello_blockchain {

    module Daily {

        use std::debug::print;

        const FIXED_COST_USD: u64 = 42_500;

        fun profit_calculator(sales_amount: u64) : u64 {

            let profit: u64;

            if (sales_amount > FIXED_COST_USD) {

                profit = sales_amount - FIXED_COST_USD

            } else {

                profit = 0
            };

            profit
        }


        #[test]
        fun testing_daily() {

            let profit_result1 = profit_calculator(35000);

            print(&profit_result1); //[debug] 0

            let profit_result2 = profit_calculator(68000);

            print(&profit_result2); //[debug] 25500
        }
    }

}

// aptos move test
