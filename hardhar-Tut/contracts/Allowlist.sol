//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AllowlistDapp {

uint8 public maxAvailableAllowlists; 

mapping (address => bool) public allowlistedAddrs;

uint8 public noOfAddrAllowlisted;

//Constructor for owner to set the max allowlist spots at the time of deployment

constructor(uint8 _maxAllowllist) {

maxAvailableAllowlists = _maxAllowllist;
}

function addAllowlist() public {

    require(!allowlistedAddrs[msg.sender], "This address is already on the allowlist");

    require(noOfAddrAllowlisted < maxAvailableAllowlists, "Allowlist limit has been reached");

    allowlistedAddrs[msg.sender] = true;

    noOfAddrAllowlisted += 1;
}


}