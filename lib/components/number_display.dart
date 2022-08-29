import 'package:flutter/material.dart';
import 'package:dice_roller/components/rolled_dice_icon.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dice_roller/providers/theme_provider.dart';

class NumberDisplay extends ConsumerWidget {
  const NumberDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var widgetHeight = screenHeight * .20;
    var widgetWidth = screenWidth;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        width: widgetWidth,
        height: widgetHeight,
        decoration: BoxDecoration(
            color: ref.watch(themeProvider).numberDisplayBgColor,
            borderRadius: BorderRadius.all(Radius.circular(
                ref.watch(themeProvider).numberDisplayBorderRadius))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: widgetHeight * .20,
                width: widgetWidth * .85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        ref.watch(themeProvider).diceIconBorderRadius)),
                    color: ref.watch(themeProvider).numberDisplayBgColor),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RolledDiceIcon(originalDice: 20, diceNumber: 8),
                    RolledDiceIcon(originalDice: 20, diceNumber: 12),
                    RolledDiceIcon(originalDice: 20, diceNumber: 2),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: ref.watch(themeProvider).diceTypeBgColor,
                            borderRadius: BorderRadius.all(Radius.circular(ref
                                .watch(themeProvider)
                                .diceTypeBorderRadius))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            'assets/D20.svg',
                            color: ref.watch(themeProvider).diceTypeStrokeColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      '20',
                      style: TextStyle(
                          color:
                              ref.watch(themeProvider).numberDisplayTextColor,
                          fontSize: 110),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text('x2',
                        style: TextStyle(
                            color:
                                ref.watch(themeProvider).numberDisplayTextColor,
                            fontSize: 50)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
