//SPDX-LICENSE-IDENTIFIER: MIT

import {Script} from "forge-std/Script.sol";

import {FundMe} from "../src/FundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

pragma solidity ^0.8.18;

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        // Before startBroadcast --> Not a tx
        HelperConfig helperConfig = new HelperConfig();
        address ethUsdPriceFeed = helperConfig.activeNetworkConfig();

        // After a startBroadcast -> real tx!
        vm.startBroadcast();
        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}
