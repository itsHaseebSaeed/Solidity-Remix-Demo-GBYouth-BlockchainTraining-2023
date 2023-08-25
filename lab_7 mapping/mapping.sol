// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapper {
    mapping(string => uint256) public NameToBalance;

    function set(string memory _string, uint256 _numValue) public {
        NameToBalance[_string] = _numValue;
    }

    function get(string memory _string) public view returns (uint256) {
        return NameToBalance[_string];
    }

    function reset(string memory _string) public {
        delete NameToBalance[_string];
    }
}

contract Mappings {
    mapping(address => mapping(string => mapping(string => uint256)))
        private AddrWalletToName;

    function AddValue(
        address _addr,
        string memory firstName,
        string memory lastName,
        uint256 _balance
    ) public {
        AddrWalletToName[_addr][firstName][lastName] = _balance;
    }

    function get(
        address _addr,
        string memory firstName,
        string memory lastName
    ) public view returns (uint256) {
        return AddrWalletToName[_addr][firstName][lastName];
    }

    function remove(
        address _addr,
        string memory firstName,
        string memory lastName
    ) public {
        delete AddrWalletToName[_addr][firstName][lastName];
    }
}

contract NameMap {
    mapping(uint256 => mapping(address => mapping(string => string)))
        public UserMap;

    function setMap(
        uint256 _yearofbirth,
        address _wallet,
        string memory _codename,
        string memory UserName
    ) public {
        UserMap[_yearofbirth][_wallet][_codename] = UserName;
    }
    function getMap(
        uint _yearofbirth,
        address _wallet,
        string memory _codename
    ) public
    view returns(
        string memory _username
        ) {
            return UserMap[_yearofbirth][_wallet][_codename];
    }
    function reset(
        uint _yearofbirth,
        address _wallet,
        string memory _codename
        ) public {
            delete UserMap[_yearofbirth][_wallet][_codename];
        }
}