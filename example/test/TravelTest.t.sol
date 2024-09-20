//SPDX-License_Identifier: MIT

pragma solidity ^0.8.18;
import {Test} from "forge-std/Test.sol";
import {Travel} from "../src/Travel.sol";

contract TravelTest is Test {
    Travel travel;

    function setUp() external {
        travel = new Travel();
    }

    function testLicenses() public {
        assertEq(travel.License(), 12);
    }

    function testRetriveValue() public {
        uint value = travel.value();
        assertEq(value, 0);
    }
}
