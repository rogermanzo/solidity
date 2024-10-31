//SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <=0.9.9;

contract FundMe{

    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
        // desde que wallet se envia la trs += valor asociado a la trs
        addressToAmountFunded[msg.sender] += msg.value;

        // cuanto eth => usd conversion
    }
}