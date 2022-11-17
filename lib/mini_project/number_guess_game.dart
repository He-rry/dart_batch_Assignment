
import 'dart:math';
import 'dart:io';

var rm = Random();
int hiddenNum = rm.nextInt(100) + 1;

void main() {
  int count = 0;
  bool status = true;
  bool gameStatus = true;
  do{
    print(' \n Number Guess Game 🎱🎮 \n');
    stdout.write('Type s to start / enter anything to exit :');
    dynamic gameStartInput = stdin.readLineSync();
    if (gameStartInput == 's') {
      while (status) {
        print('Guess the number between 1 to 100');
        stdout.write("Enter number :");
        dynamic userInput = stdin.readLineSync();
        int userInt = int.parse(userInput);
        if (userInt != hiddenNum) {
          if (count == 2) {
            print('Hints for noobs 💡💡💡!!');
            if (hiddenNum < 100 && hiddenNum > 80) {
              print('answer is between 100 to 80');
            } else if (hiddenNum < 80 && hiddenNum > 60) {
              print('answer is between 80 to 60');
            } else if (hiddenNum < 60 && hiddenNum > 40) {
              print('answer is between 60 to 40');
            } else if (hiddenNum < 40 && hiddenNum > 20) {
              print('answer is between 40 to 20');
            } else if (hiddenNum < 20) {
              print('answer is less than 20');
            }
          }
          if (count > 6) {
            print('Hints for stupids 💡💡💡!!');
            if (hiddenNum > 90) {
              print('answer is greater than 90');
            } else if (hiddenNum < 90 && hiddenNum > 80) {
              print('answer is between 90 to 80');
            } else if (hiddenNum < 80 && hiddenNum > 70) {
              print('answer is between 80 to 70');
            } else if (hiddenNum < 70 && hiddenNum > 60) {
              print('answer is between 70 to 60');
            } else if (hiddenNum < 60 && hiddenNum > 50) {
              print('answer is between 60 to 50');
            } else if (hiddenNum < 50 && hiddenNum > 40) {
              print('answer is between 50 to 40');
            } else if (hiddenNum < 40 && hiddenNum > 30) {
              print('answer is between 40 to 30');
            } else if (hiddenNum < 30 && hiddenNum > 20) {
              print('answer is between 30 to 20');
            } else if (hiddenNum < 20 && hiddenNum > 10) {
              print('answer is between 20 to 10');
            } else if (hiddenNum < 10) {
              print('answer is less than 10');
            }
          }
        }
        if (userInt == hiddenNum) {
          status = false;
          print('Correct answer ✔✔✔✔');
          if (count < 3) {
            print('You are god level 👀👀');
          }
          if (count > 3 && count < 7) {
            print('You are Intelligent 👌👌');
          }
          if (count > 7) {
            print('You are good enough 👍👍');
          }
        }
        count++;
      }
    }else{
      print('======game end ======');
      gameStatus = false;
    }
  }while(gameStatus);

}
