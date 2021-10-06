pragma solidity 0.7.0;

import './myOwner.sol';

contract Nombre is Owner{
    
    uint nombre;
    function setNombre(uint value) public isOwner{
        nombre = value;
    }
    
    function getNombre() public view isOwner returns(uint){
        return nombre;
    }
    
}