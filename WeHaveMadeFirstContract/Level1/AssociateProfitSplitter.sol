pragma solidity ^0.5.0;

// lvl 1: equal split
contract AssociateProfitSplitter {
    // @TODO: Create three payable addresses representing `employee_one`, `employee_two` and `employee_three`.

    address payable public employeeOne;
    address payable public employeeTwo;
    address payable public employeeThree;
    address payable public hrRep;

    uint public employeeOneReturns;
    uint public employeeTwoReturns;
    uint public employeeThreeReturns;
    uint public hrRepRemainder;

    constructor(address payable _one, address payable _two, address payable _three) public {
        employeeOne = _one;
        employeeTwo = _two;
        employeeThree = _three;

        hrRep = msg.sender;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        // @TODO: Split `msg.value` into three
        uint amount = msg.value / 3;

        // @TODO: Transfer the amount to each employee
        employeeOne.transfer(amount);
        employeeTwo.transfer(amount);
        employeeThree.transfer(amount);

        // @TODO: Update returns for each employee
        employeeOneReturns += amount;
        employeeTwoReturns += amount;
        employeeThreeReturns += amount;

        // @TODO: take care of a potential remainder by sending back to HR (`msg.sender`)
        uint remainder = msg.value - amount * 3;
        hrRep.transfer(remainder);
        hrRepRemainder += remainder;
    }

    function() external payable {
        // @TODO: Enforce that the `deposit` function is called in the fallback function!
        deposit();
    }
}
