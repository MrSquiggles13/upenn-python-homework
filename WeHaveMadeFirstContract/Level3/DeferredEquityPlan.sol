pragma solidity ^0.5.0;

// lvl 3: equity plan
contract DeferredEquityPlan {
    uint fakeNow = now;

    address humanResources;

    address payable employee; // bob
    bool active = true; // this employee is active at the start of the contract

    // @TODO: Set the total shares and annual distribution
    uint public totalShares = 1000;
    uint public annualDistribution = 250;

    uint startTime = fakeNow; // permanently store the time this contract was initialized

    // @TODO: Set the `unlock_time` to be 365 days from now
    uint public unlockTime = fakeNow + 365 days;

    uint public distributedShares; // starts at 0

    constructor(address payable _employee) public {
        humanResources = msg.sender;
        employee = _employee;
    }

    function distribute() public {
        require(msg.sender == humanResources || msg.sender == employee, "You are not authorized to execute this contract.");
        require(active == true, "Contract not active.");

        // @TODO: Add "require" statements to enforce that:
        // 1: `unlock_time` is less than or equal to `now`
        // 2: `distributed_shares` is less than the `total_shares`
        require(unlockTime <= fakeNow, "Contract locked: Call 'unlockTime' for exact timestamp.");
        require(distributedShares < totalShares, "Not enough shares to distribute!");

        // @TODO: Add 365 days to the `unlock_time`
        unlockTime += 365 days;

        // @TODO: Calculate the shares distributed by using the function (now - start_time) / 365 days * the annual distribution
        // Make sure to include the parenthesis around (now - start_time) to get accurate results!
        distributedShares = (fakeNow - startTime) / 365 days * annualDistribution;

        // double check in case the employee does not cash out until after 5+ years
        if (distributedShares > totalShares) {
            distributedShares = totalShares;
        }
    }

    // human_resources and the employee can deactivate this contract at-will
    function deactivate() public {
        require(msg.sender == humanResources || msg.sender == employee, "You are not authorized to deactivate this contract.");
        active = false;
    }

    // Helper function for testing time-lapse
    function fastForward() public {
        fakeNow += 100 days;
    }

    function currentTime() public view returns (uint) {
        return fakeNow;
    }

    // Since we do not need to handle Ether in this contract, revert any Ether sent to the contract directly
    function() external payable {
        revert("Do not send Ether to this contract!");
    }
}
