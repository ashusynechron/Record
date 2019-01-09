pragma solidity ^0.4.23;
contract Record{
mapping (address =>mapping(address=>bool)) private isGranted;
event permissionGranted(bytes32);
event permissionDenied(bytes32);
event granted(bytes32);
function GrantPermission(address publicaddress) public returns(bool)
{
 isGranted[msg.sender][publicaddress]=true;
 return true;
 emit granted("permission granted");

  }
function CheckPermission(address publicaddress)public  returns(bool)
{
if(isGranted[publicaddress][msg.sender]==true)
{
    return true;
    emit permissionGranted("you have been granted");
}
else
{
return false;
emit permissionDenied("you have not been granted");
}
}
}
