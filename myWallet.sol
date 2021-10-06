pragma solidity 0.7.0;

contract Wallet{
    
    
    struct walle{
        uint MontantTotal;
        uint nbrPayement;
    }
    
    mapping(address=>walle) Wallets;
    
    function Solde() public view returns(uint){
        return address(this).balance;
    }
    
    function Retrait(address payable _to, uint _retrait) public{
        uint _solde = Wallets[msg.sender].MontantTotal;
        require(_solde >= _retrait,'Fond insuffisant');
        _to.transfer(_retrait);
         Wallets[msg.sender].MontantTotal-=_retrait;
    }
    
    
    receive() external payable{
        Wallets[msg.sender].MontantTotal+=msg.value;
        Wallets[msg.sender].nbrPayement+=1;
    }
    
    
}