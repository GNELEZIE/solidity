pragma solidity 0.8.7;

import './B.sol';
contract A{
    
    address addressB;
    
    function setAddressB(address _addressB) external{
        addressB = _addressB;
    }
    
    function setNombre(uint _val) external {
        interfaceB b = interfaceB(addressB);
        b.setNombre(_val);
        
    }
    
     function getNombreB() external view returns(uint) {
     interfaceB b = interfaceB(addressB);
     return b.getNombre();
    }
    
}


//B.sol

// interface interfaceB{
// function setNombre(uint _val) external; 
// function getNombre() external view returns(uint);
// }
// contract B {
    
//     uint number;
//     function setNombre(uint _val) external {
//         number = _val;
//     }
    
//      function getNombre() external view returns(uint) {
//       return number;
//     }  
// }
