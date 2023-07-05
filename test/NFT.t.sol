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
    function test_RevertMintWithoutValue() public {
        vm.expectRevert(MintPriceNotPaid.selector);
        nft.mintTo(address(1));
    }

    function test_MintPricePaid() public {
        nft.mintTo{value: 0.08 ether}(address(1));
    }

    function test_RevertMintMaxSupplyReached() public {
        uint256 slot = stdstore
            .target(address(nft))
            .sig("currentTokenId()")
            .find();

        bytes32 loc = bytes32(slot);
        bytes32 mockedCurrentTokenId = bytes32(abi.encode(1000));
        vm.store(address(nft), loc, mockedCurrentTokenId);
        vm.expectRevert(MaxSupply.selector);
        nft.mintTo{value: 0.08 ether}(address(1));
    }

    function test_RevertMintToZeroAddress() public {}

    function test_NewMintOwnerRegistered() public {}

    function test_BalanceIncremented() public {}

    function test_SafeContractReciever() public {}

    function test_RevertUnSafeContractReceiver() public {}

    function test_WithdrawalWorksAsOwner() public {}

    function test_WithdrawalFailsAsNotOwner() public {}
}
