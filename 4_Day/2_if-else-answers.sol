// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract IfElse {


//1) if age < 10 then pay $0 else pay $20  
function check_1(uint age) public pure returns(uint){
    if (age < 10) {
        return 0;
    }else {
        return 20;
    }
}

function ternary_check_1(uint age) public pure returns(uint){
return age < 10 ? 0 : 20;  
}





//2) if age < 10 
//and if a girl then free barbie doll
// and if a boy then free bayblade
// then pay $0 else pay $20  

function check_2(uint age, bool isGirl) public pure returns(uint, string memory){
    string memory gift = "No gift";
    if (age < 10) {
        if(isGirl){
        gift = "barbie doll";
        }else{
        gift = "bayblade";
        }
        return (0,gift);
    }else {
        return (20,gift);
    }
}
  function ternary_check_2(uint age, bool isGirl) public pure returns(uint, string memory){
        return age < 10 ? (0, isGirl ? "barbie doll" : "bayblade") : (20, "No gift");
    }


//3) if age < 10 and
//  if a girl then free barbie doll
//  if a boy then free bayblade
//  then $0 
//  else 
//  if age > 70 then pay  $10
//  else pay $20
function check_3(uint age, bool isGirl) public pure returns(uint, string memory){
    string memory gift = "No gift";
    if (age < 10) {
        if(isGirl){
        gift = "barbie doll";
        }else{
        gift = "bayblade";
        }
        return (0,gift);
    }
    else if(age > 70){
        return (10,gift);
    }
    else {
        return (20,gift);
    }
}




function ternary_check_3(uint age, bool isGirl) public pure returns(uint, string memory){
    return age < 10 ? (0, isGirl ? "barbie doll" : "bayblade") : (age > 70 ? (10, "No gift") : (20, "No gift"));
}

// condition1 ? /* do something if condition1 is true */ : (condition2 ? /* do something if condition2 is true */ : /* do something if both conditions are false */);



}