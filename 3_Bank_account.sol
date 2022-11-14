pragma solidity 0.8.7;
contract Bank {

   uint public balance;
  
   function deposit(uint _amount) external payable {
     balance += _amount;
   }
   function withdraw(uint _amount) external {     
     require(balance >= _amount, "Insufficient balance!");
     balance -= _amount;
   }
}
