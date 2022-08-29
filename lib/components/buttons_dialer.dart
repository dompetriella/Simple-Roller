import 'package:dice_roller/components/dice_button.dart';
import 'package:flutter/material.dart';

class ButtonsDialer extends StatelessWidget {
  const ButtonsDialer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 20),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 4),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 6),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 8),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 10),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: DiceButton(diceNumber: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}