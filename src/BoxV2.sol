// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {BoxV1} from "./BoxV1.sol";

contract BoxV2 is BoxV1 {
    // 新的状态变量
    uint256 internal newValue;

    function setNewValue(uint256 _newValue) public {
        newValue = _newValue;
    }

    function getNewValue() public view returns (uint256) {
        return newValue;
    }

    // 重写 version 函数
    function version() public pure override returns (uint256) {
        return 2;
    }

    // 新的函数，获取 BoxV1 中的 value 变量
    function getValueFromV1() public view returns (uint256) {
        return getValue();
    }
    // 因为是继承的，所以不需要再次实现 _authorizeUpgrade 函数
    // function _authorizeUpgrade(
    //     address newImplementation
    // ) internal override onlyOwner {}
}
