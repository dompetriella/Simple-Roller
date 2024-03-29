import 'package:dice_roller/components/rolled_dice_icon.dart';
import 'package:dice_roller/providers/dice_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dice_roller/providers/theme_provider.dart';
import 'package:dice_roller/models/rolledDice.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class HistoryLog extends ConsumerWidget {
  final List<RolledDice> rolledDiceList;
  final int sequence;
  final bool isLast;
  HistoryLog(
      {Key? key,
      required this.rolledDiceList,
      required this.sequence,
      this.isLast = false})
      : super(key: key);

  final _expand = StateProvider<bool>((ref) => false);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String handleText() {
      String messageString = ref.watch(rollHistoryProvider).length - sequence >
              1
          ? '${(ref.watch(rollHistoryProvider).length - sequence)} Rolls Ago : '
          : 'Last Roll : ';
      String time =
          '${DateFormat('MM-dd kk:mm').format(rolledDiceList[0].time)} ';
      return messageString + time;
    }

    int getRandomNumber(int min, int max) {
      final random = Random();
      return min + random.nextInt(max - min);
    }

    int getRolledDiceSum(List<RolledDice> rolledDice) {
      int sum = 0;
      for (var die in rolledDice) {
        sum += die.rollValue;
      }
      return sum < 1000 ? sum : 999;
    }

    var throwDirection = getRandomNumber(-20, 20);

    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        ref.read(_expand.notifier).state = !ref.read(_expand);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 5, 8, 0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ref.watch(themeProvider).drawerHistorySliverBg,
                      borderRadius: BorderRadius.all(Radius.circular(
                          ref.watch(themeProvider).drawerBorderRadius)),
                      boxShadow: [
                        ref.watch(themeProvider).innerShadow,
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: sequence > 0
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: Container(
                                      child: Text(
                                        handleText(),
                                        style: TextStyle(
                                            color: ref
                                                .watch(themeProvider)
                                                .drawerHistorySliverTextColor,
                                            fontSize:
                                                screenHeight < 1000 ? 12 : 24),
                                      ),
                                    ),
                                  ),
                                  if (ref.read(_expand) == false)
                                    Semantics(
                                      label: 'Total',
                                      child: Text(
                                          '${getRolledDiceSum(rolledDiceList) + rolledDiceList[0].modifier}',
                                          style: TextStyle(
                                              fontSize:
                                                  screenHeight < 1000 ? 12 : 24,
                                              color: ref
                                                  .watch(themeProvider)
                                                  .drawerHistorySliverTextColor,
                                              fontWeight: FontWeight.w900)),
                                    ),
                                ],
                              ),
                              if (ref.watch(_expand))
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: rolledDiceList
                                          .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: RolledDiceIcon(
                                                  originalDice: e.diceValue,
                                                  rolledValue: e.rollValue,
                                                  size: screenHeight < 1000
                                                      ? 25
                                                      : 40)))
                                          .toList()
                                          .animate(interval: 80.ms)
                                          .fade(duration: 300.ms, delay: 100.ms)
                                          .rotate(
                                              duration: 500.ms,
                                              begin: throwDirection > 0
                                                  ? 1.80
                                                  : .20)
                                          .move(
                                              duration: 500.ms,
                                              begin: Offset(
                                                  throwDirection.toDouble(),
                                                  -20),
                                              curve: Curves.elasticOut,
                                              delay: 200.ms)
                                          .scale(
                                              duration: 200.ms,
                                              curve: Curves.elasticIn,
                                              begin: .7)),
                                ),
                              if (ref.read(_expand))
                                Semantics(
                                  label: 'Total: ',
                                  child: Text(
                                          '${getRolledDiceSum(rolledDiceList)}${(rolledDiceList[0].modifier != 0 ? ' + (${rolledDiceList[0].modifier})' : '')}',
                                          style: TextStyle(
                                              color: ref
                                                  .watch(themeProvider)
                                                  .drawerHistorySliverTextColor,
                                              fontWeight: FontWeight.w900,
                                              fontSize: screenHeight < 1000
                                                  ? 24
                                                  : 48))
                                      .animate()
                                      .fade(duration: 500.ms, delay: 250.ms),
                                ),
                            ],
                          )
                        : Center(
                            child: Text(
                            'Simple Roller Started',
                            style: TextStyle(
                                color: ref
                                    .watch(themeProvider)
                                    .drawerHistorySliverTextColor,
                                fontWeight: FontWeight.w900),
                          )),
                  ),
                ),
              ],
            ),
          ),
          if (sequence > 0 && ref.watch(_expand))
            Positioned(
              bottom: -30,
              right: 0,
              left: 0,
              child: Icon(
                Icons.arrow_drop_up_rounded,
                size: 75.0,
                color: ref.watch(themeProvider).rollButtonBgColor,
              ).animate().scale(begin: 0.50, duration: 750.ms).move(
                  begin: const Offset(0, -25),
                  duration: 250.ms,
                  curve: Curves.bounceOut),
            ),
          if (sequence > 0 && ref.watch(_expand) == false)
            Positioned(
              right: 8,
              bottom: 0,
              top: 2,
              child: Icon(
                Icons.arrow_drop_down_rounded,
                size: 30,
                color: ref.watch(themeProvider).rollButtonBgColor,
              ),
            ),
        ],
      ),
    );
  }
}
