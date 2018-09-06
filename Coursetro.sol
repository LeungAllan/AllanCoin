pragma solidity ^0.4.18;

contract Coursetro {
    
   string fName;
   uint age;
   address owner; 
   
   constructor() public {     // Add this constructor
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    event Instructor(
       string name,
       uint age
    );
    
   function setInstructor(string _fName, uint _age) onlyOwner public {
       fName = _fName;
       age = _age;
       emit Instructor(_fName, _age); 
   }
   
   function getInstructor() public constant returns (string, uint) {
       return (fName, age);
   }
    
}