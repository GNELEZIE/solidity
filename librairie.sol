pragma solidity 0.8.0;

import '@openzeppelin/contracts/utils/Strings.sol';

contract librarie{
    function toMyString(string memory A, string memory B, uint C) external pure returns(string memory){
        string memory res = string(abi.encodePacked(A,B,Strings.toString(C)));
        return res;
    }
}