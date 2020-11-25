import 'dart:io';
import 'dart:math';

String getUserMove() {
  print("(P)Papel, (G)Gunting, (B)Bato");
  String selection = stdin.readLineSync().toUpperCase();

  switch (selection) {
    case "P":
      return "Papel";
      break;
    case "G":
      return "Gunting";
      break;
    case "B":
      return "Bato";
      break;
    default: //if anything but R, P, or S
      return "Quit";
      break;
  }
}

String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3); //random int from 0 to 2

  switch (move) {
    case 0:
      return "Papel";
      break;
    case 1:
      return "Gunting";
      break;
    case 2:
      return "Bato";
      break;
    default:
      break;
  }
}

String results(String userMove, String computerMove) {
  if (userMove == computerMove) {
    return "Tie";
  } else if (userMove == "Bato" && computerMove == "Gunting") {
    return "You Win!";
  } else if (userMove == "Gunting" && computerMove == "Papel") {
    return "You Win!";
  } else if (userMove == "Papel" && computerMove == "Bato") {
    return "You Win!";
  } else {
    return "Bot Wins!";
  }
}

void main() {
  while (true) {
    //main game loop
    print("Papel, Gunting, Bato! What's your pick?");
    String userMove = getUserMove();

    if (userMove == "Quit") {
      return; //returning from void function exits it
    }

    print("You: $userMove");
    String computerMove = getComputerMove();
    print("Bot: $computerMove");
    print(results(userMove, computerMove));
  }
}
