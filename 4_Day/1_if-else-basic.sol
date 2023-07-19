// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract IfElseParkEdition {

    uint public constant adult_fee = 20;
    uint public constant old_age_fee = 10;
    uint public constant child_fee = 0;
    uint public constant cut_off_age = 10;
    uint public constant old_age_cut_off_age = 70;



//1) if age < 10 then pay $0 else pay $20  

function fee(uint age) public pure returns (uint) {
    if(age < cut_off_age){
        return child_fee;
    }
    else{
        return adult_fee;
    }
}

function fee_ternary(uint age) public pure returns (uint){
    return age < cut_off_age ? child_fee: adult_fee; 
}



//2) if age < 10 
//  and if a girl then free barbie doll
//  and if a boy then free bayblade
// then pay $0 else pay $20  

function fee_2(uint age, bool isGirl) public pure returns (uint,string memory) {
    string memory gift = "";

    if(age < cut_off_age){
        if(isGirl){
            gift ="barbie doll";
        }
        else{
            gift = "bayblade";
        }
        return (child_fee,gift);
    }
    else{
        return (adult_fee,gift);
    }
}


function fee_2_ternary(uint age, bool isGirl) public pure returns(uint, string memory){
        
// return age < cut_off_age ? (child_fee, isGirl ? "barbie doll" : "bayblade") : 
// (adult_fee, "No gift");
return (age < cut_off_age) ? (child_fee,(isGirl) ?  "barbie doll" : "bayblade") : (adult_fee,"No gift");
return (age < cut_off_age) ? (child_fee,(isGirl) ?  "barbie doll" : "bayblade") : (adult_fee,"No gift");

}

//2) if age < 10 and
//  if a girl then free barbie doll
//  if a boy then free bayblade
//  then $0 
//  else 
//  if age > 70 then pay  $10 and get a 20$ gift voucher
//  else pay $20

function fee_3(uint age, bool isGirl) public pure returns (uint,string memory) {
            string memory gift = "";

    if(age < cut_off_age){
        if(isGirl){
            gift ="barbie doll";
        }
        else{
            gift = "bayblade";

        }
        return (child_fee,gift);
    }
    else if(age > old_age_cut_off_age){
        gift = "$50 food voucher";
        return (old_age_fee,gift);
    }
    else{
        return (adult_fee,gift);
    }
}


function fee_3_ternary(uint age, bool isGirl) public pure returns (uint,string memory) {
            string memory gift = "";

    // if(age < cut_off_age){
    //     if(isGirl){
    //         gift ="barbie doll";
    //     }
    //     else{
    //         gift = "bayblade";

    //     }
    //     return (child_fee,gift);
    // }
    // else if(age > old_age_cut_off_age){
    //     g ift = "$50 food voucher";
    //     return (old_age_fee,gift);
    // }
    // else{
    //     return (adult_fee,gift);
    // }


(age > old_age_cut_off_age) ? 

    (age < cut_off_age) ? (child_fee,(isGirl)?"barbie doll":"bayblade") : __ ;


}





// let cost = (age < 10) ? "$0" : "$20";
// let gift = (age < 10) ? (isGirl ? "free barbie doll" : "free bayblade") : "No gift";

}