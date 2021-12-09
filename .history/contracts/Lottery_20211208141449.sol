// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@chainlink/contracts/src/v0.8/VRFConsumerBase.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Lottery is VRFConsumerBase, Ownable {
    address payable[] public players;
    address payable public recentWinner;
    uint256 public usdEntryFee;
    uint256 public randomeness;
    AggregatorV3Interface internal ethUsdPriceFeed;

    enum LOTTERY_STATE {
        OPEN,
        CLOSED,
        CANCELED,
        CALCULATING_WINNER,
    }




    event LotteryCreated(address lottery);
    event LotteryStarted(address lottery);
    event LotteryEnded(address lottery);
    event LotteryWinner(address lottery, address winner);

    struct LotteryInfo {
        uint256 startTime;
        uint256 endTime;
    }
}
