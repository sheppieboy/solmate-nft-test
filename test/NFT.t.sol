// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "forge-std/Test.sol";
import "../src/NFT.sol";

contract NFTTest is Test {
    using stdStorage for StdStorage;

    NFT private nft;

    function setUp() public {
        //deploy nft
        nft = new NFT("Test_NFT", "TEST", "bareURI");
    }

    //Tests for mintTo function
    function test_RevertMintWithoutValue() public {}

    function test_MintPricePaid() public {}

    function test_RevertMintMaxSupplyReached() public {}

    function test_RevertMintToZeroAddress() public {}

    function test_NewMintOwnerRegistered() public {}

    function test_BalanceIncremented() public {}

    function test_SafeContractReciever() public {}

    function test_RevertUnSafeContractReceiver() public {}

    function test_WithdrawalWorksAsOwner() public {}

    function test_WithdrawalFailsAsNotOwner() public {}
}
