// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint16 public constant FIXED_COST_USD = 55_000;

    uint256 public profit;

    function setProfit(uint256 sales) external {

        if (sales <= FIXED_COST_USD) {

            profit = 0;

        } else {

            profit = sales - uint256(FIXED_COST_USD);
        }
    }

    function getProfit() external view returns (uint256) {

        return profit;
    } 

}
