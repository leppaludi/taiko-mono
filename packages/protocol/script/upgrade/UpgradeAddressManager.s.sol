// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "forge-std/src/Script.sol";
import "forge-std/src/console2.sol";
import "../../contracts/common/AddressManager.sol";
import "./UpgradeScript.s.sol";

contract UpgradeAddressManager is UpgradeScript {
    function run() external setUp {
        upgrade("AddressManager", address(new AddressManager()));
    }
}
