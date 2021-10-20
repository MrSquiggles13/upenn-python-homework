pragma solidity ^0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    address payable employeeOne; // ceo
    address payable employeeTwo; // cto
    address payable employeeThree; // bob

    uint public employeeOneReturns;
    uint public employeeTwoReturns;
    uint public employeeThreeReturns;

    constructor(address payable _one, address payable _two, address payable _three) public {
        employeeOne = _one;
        employeeTwo = _two;
        employeeThree = _three;
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        uint points = msg.value / 100; // Calculates rudimentary percentage by dividing msg.value into 100 units
        uint total;
        uint amount;

        // @TODO: Calculate and transfer the distribution percentage
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee
        // Step 2: Add the `amount` to `total` to keep a running total
        // Step 3: Transfer the `amount` to the employee
        amount = points * 60;
        total += amount;
        employeeOne.transfer(amount);
        employeeOneReturns += amount;

        // @TODO: Repeat the previous steps for `employee_two` and `employee_three`
        amount = points * 25;
        total += amount;
        employeeTwo.transfer(amount);
        employeeTwoReturns += amount;

        amount = points * 15;
        total += amount;
        employeeThree.transfer(amount);
        employeeThreeReturns += amount;

        employeeOne.transfer(msg.value - total); // ceo gets the remaining wei
        employeeOneReturns += (msg.value - total);
    }

    function() external payable {
        deposit();
    }
}
