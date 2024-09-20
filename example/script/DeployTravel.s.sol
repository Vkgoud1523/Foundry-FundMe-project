// SPDX-LICENSE-IDENTIFIER : MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Travel} from "../src/Travel.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (Travel) {
        vm.startBroadcast();
        new Travel();
        vm.stopBroadcast();
    }
}
