pragma solidity ^0.5.0;
contract C {
   uint public data = 30;
   uint internal iData= 10;
   
   function x() public returns (uint) {
      data = 3; // internal access
      return data;
   }
}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
    uint public result=0;
   function y() public returns (uint) {
      iData = 3; // internal access
      return iData;
   }
   function getResult() public returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      result = a + b;
      return result; //access the state variable
   }
}