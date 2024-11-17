import 'dart:io';
import 'dart:math';


void main(){
    var randomNumber = randomizerFunc();
    var userNumber=getUsernumber();
    randomNumber ==userNumber? print("your guess was correct"):print("sorry your guess was wrong");

}

int getUsernumber(){
    stdout.write("enter your guess");
    int guess = int.parse(stdin.readLineSync()!);
    return guess;

}

int randomizerFunc(){

    var number = Random();
    return number.nextInt(10);

}