// SPDX-License-Identifier: MIT
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

pragma solidity ^0.8.19;

contract Glayze is ERC20 {
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 1e6; // 1 billion
    // TODO: create2

    constructor(address glayzeManager) ERC20("Glayze", "GLAYZE") {
        _mint(glayzeManager, MAX_SUPPLY);
    }
}