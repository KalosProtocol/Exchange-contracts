// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "ds-test/test.sol";
import "./ICheatcodes.sol";
import "../contracts/KalosERC20.sol";

contract FolioNFTTest is DSTest {
    CheatCodes constant cheats = CheatCodes(HEVM_ADDRESS);

    KalosERC20 kalosERC20;

    address ownerAddress = 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266;

    address[] userAddresses;

    function setUp() public {
        kalosERC20 = new KalosERC20();

        userAddresses = new address[](5);
        userAddresses[0] = 0xF31070b090D7375ee47078Ee5AE877F880f7ed11;
        userAddresses[1] = 0x2D84A7f59e2530A6B3C6065394D2FA36b61f42FE;
        userAddresses[2] = 0xF9416452a1f5dA51b535D5e45Ee8a8e1023B5e10;
        userAddresses[3] = 0xcb16C9D71227fa3916895586298E733103404D58;
        userAddresses[4] = 0x3ad739315eb4Ea20caeBe66C1Dc27D94BFd87eEE;
    }

    function testPermit() public {
        for (uint256 i = 0; i < 5; i++) {
            cheats.deal(userAddresses[i], 100 ether);
        }

        // verify if the result is correct
    }
}
