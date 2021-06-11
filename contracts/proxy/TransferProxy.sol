// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

import "../roles/OperatorRole.sol";

contract TransferProxy is OperatorRole {

    function erc1155safeTransferFrom(
        IERC1155 token,
        address _from,
        address _to,
        uint256 _id,
        uint256 _value,
        bytes calldata _data
    ) external onlyOperator {
        token.safeTransferFrom(_from, _to, _id, _value, _data);
    }
}
