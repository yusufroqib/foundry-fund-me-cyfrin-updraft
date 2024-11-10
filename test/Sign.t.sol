//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {Test, console} from "forge-std/Test.sol";

contract SignTest is Test {
    function testSignature() public {
        uint privateKey = 123;
        address signerAddr = vm.addr(privateKey);
        bytes32 messageHash = keccak256("Secret Message");
        (uint8 v, bytes32 r, bytes32 s) = vm.sign(privateKey, messageHash);
        address recSigner = ecrecover(messageHash, v, r, s);
        // console.log(recSigner);
        // console.log(signerAddr);
    }
}
