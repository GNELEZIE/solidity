pragma solidity 0.8.7;

import './myOwner.sol';

contract appartement is Owner{
     enum typeBien{
         terrain,
         maison,
         appartement
     }
     
     struct Bien{
         uint id;
         string name;
         uint prix;
         typeBien _typeBien;
     }
     
     uint compter;
     mapping(address => Bien[]) possessions;
  
   function addAppart(address _proprietaire, string memory _name, uint _prix, typeBien _typeBien) public isOwner{
       require(_prix >  1000,"Le prix doit etre superieur a 1000 wei");
       require(uint(_typeBien) >=0, "Le type doit etre compris entre 0 et 2");
       require(uint(_typeBien) <= 2, "Le type doit etre compris entre 0 et 2");
       possessions[_proprietaire].push(Bien(compter,_name,_prix,_typeBien));
       compter++;
       
   } 
   
   function getBien(address _proprietaire) public view isOwner returns(Bien[] memory){
       return possessions[_proprietaire];
   }
   
   function getMesBien(address _proprietaire) public view returns(Bien[] memory){
       return possessions[msg.sender];
   }
   
   
}