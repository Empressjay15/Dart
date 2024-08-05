void main(){
String atmCardNumber=
'5078720066326587';
print(validateAtmNumber(atmCardNumber));
}


String validateAtmNumber(String cardNumber ){
  if(cardNumber != 16){
    return "Invalid card number";

  }
  int sum=0;

// Looping through each digit of the card number
  for(int i= 0; i < 16; i++ ){

    //converting the string characters to interger
    int digit = int.parse(cardNumber[i]);



    if(i % 2 == 0){
      digit *= 2;


      if(digit > 9){
        digit -= 9;
      
      }
    }

    sum += digit;
    }
  
  



    if(sum % 10 == 0){
      return "Valid ATM card number.";

    }else{
      return "Invalid ATM card number";
    }
  }









