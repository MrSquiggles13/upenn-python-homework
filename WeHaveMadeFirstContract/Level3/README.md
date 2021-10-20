# Deferred Equity Plan

* A contract that divvies out portions of total shares over a set period of time (in this case once per 365 days)

![](https://image.shutterstock.com/image-photo/employee-stock-option-eso-shown-260nw-1724881441.jpg)

<br/>

## Deploy

![](Screenshots/level3_deploy.png)

### Contract is first compiled to check for errors
### Address inputted for employee receiving dividends
### Orange deploy button initiates deployment and success message is received with interface and contract address

<br/>
<br/>

## Shares Distributed Too Early

![](Screenshots/level3_distributeearly.png)

### Current time and unlock time are called to make sure current time is under unlock time
### Distribute is called and expected to fail since shares are not unlocked

<br/>
<br/>

## Fast Forward Time One Year

![](Screenshots/level3_fastforwardtimeoneyear.png)

### Fast forward is called enough times to unlock shares
### Current time and unlock time are compared to make sure current time is larger

<br/>
<br/>

## Distribute Shares After One Year

![](Screenshots/level3_distributesharesoneyear.png)

### Distributed shares are checked to make sure they are 0
### Shares are distributed for the year
### Distributed shares are checked to make sure they are 250 (annualized shares * amnount of years)

<br/>
<br/>

## Fast Forward Time Multiple Years

![](Screenshots/level3_fastforwardtimemultiyear.png)

### Fast forward is called until enough time has passed to distribute all shares
### Current time and unlock time are compared to make sure current time is much greater than unlock time

<br/>
<br/>

## Distribute Rest Of Shares

![](Screenshots/level3_distributesharesmultiyear.png)

### Distributed shares is called to check if still 250
### Distribute is called to claim rest of shares
### Distributed shares and total shares are called and compared to be equivalent

<br/>
<br/>

## Fail To Distribute When Out Of Shares

![](Screenshots/level3_distributesharesnotenough.png)

### Fast forward is called to try to enable more shares
### Distribute is called to make sure no more shares can be distributed past total shares

<br/>
<br/>
<br/>

# Utilization

## Stock Options
* Payout is guarenteed and automated

## Trust Fund
* No need to monitor distribution
* Recieving party does not need to do anything for withdraw