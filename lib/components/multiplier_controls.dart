import 'package:dice_roller/providers/animation_provider.dart';
import 'package:dice_roller/providers/dice_provider.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/semantics.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dice_roller/providers/theme_provider.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class MultiplierControls extends ConsumerWidget {
  const MultiplierControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: screenHeight * 0.08,
        width: screenWidth,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MinusButton(screenWidth: screenWidth),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                child: ClearButton(screenWidth: screenWidth),
              ),
              PlusButton(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}

class PlusButton extends ConsumerWidget {
  const PlusButton({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Semantics(
      button: true,
      label:
          'Increase Number of Dice: Current Dice ${ref.watch(multiplierProvider)}',
      child: GestureDetector(
        onTap: () {
          buttonPressAnimation(ref, multiplierPlusButtonPressEffects,
              multiplierPlusButtonPressCondition,
              speed: 100, name: 'Plus');
          ref.watch(multiplierProvider.notifier).increment();

          SemanticsService.announce(
              '${ref.watch(multiplierProvider)}', TextDirection.ltr);
        },
        onLongPress: () {
          buttonPressAnimation(
            ref,
            multiplierPlusButtonPressEffects,
            multiplierPlusButtonPressCondition,
            speed: 300,
          );
          ref.watch(multiplierProvider.notifier).bigIncrement();
        },
        child: Animate(
          adapter:
              TriggerAdapter(ref.watch(multiplierPlusButtonPressCondition)),
          effects: ref.watch(multiplierPlusButtonPressEffects),
          onComplete: (controller) => ref
              .watch(multiplierPlusButtonPressCondition.notifier)
              .state = false,
          child: Stack(
            children: [
              Container(
                height: screenWidth < 600 ? 50 : 120,
                width: screenWidth < 600 ? 70 : screenWidth * .25,
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).multiplierBgColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ref.watch(themeProvider).diceButtonBorderRadius)),
                    boxShadow: [
                      ref.watch(themeProvider).multiplierDropShadow,
                      ref.watch(themeProvider).multiplierOutline,
                    ]),
              ),
              Positioned.fill(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(
                      'assets/plus.svg',
                      colorFilter: ColorFilter.mode(
                          ref.watch(themeProvider).multiplierTextColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClearButton extends ConsumerWidget {
  const ClearButton({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Semantics(
      label: 'Clear All Values',
      button: true,
      child: GestureDetector(
        onTap: () {
          buttonPressAnimation(ref, multiplierClearButtonPressEffects,
              multiplierClearButtonPressCondition,
              speed: 100, name: "Clear");
          ref.watch(isClear.notifier).state = true;
          ref.watch(multiplierProvider.notifier).reset();
          ref.watch(modifierProvider.notifier).state = 0;
          ref.watch(displayNumber.notifier).state = '0';
          ref.watch(modifierSignPositive.notifier).state = true;

          SemanticsService.announce(
              '${ref.watch(multiplierProvider)} rolled dice',
              TextDirection.ltr);
        },
        child: Animate(
          adapter:
              TriggerAdapter(ref.watch(multiplierClearButtonPressCondition)),
          effects: ref.watch(multiplierClearButtonPressEffects),
          onComplete: (controller) => ref
              .watch(multiplierClearButtonPressCondition.notifier)
              .state = false,
          child: Stack(
            children: [
              Container(
                height: screenWidth < 600 ? 50 : 200,
                width: screenWidth < 600 ? 60 : screenWidth * .30,
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).multiplierBgColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ref.watch(themeProvider).diceButtonBorderRadius)),
                    boxShadow: [
                      ref.watch(themeProvider).multiplierDropShadow,
                      ref.watch(themeProvider).multiplierOutline,
                    ]),
              ),
              Positioned.fill(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(
                      'assets/clear.svg',
                      colorFilter: ColorFilter.mode(
                          ref.watch(themeProvider).multiplierTextColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MinusButton extends ConsumerWidget {
  const MinusButton({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Semantics(
      button: true,
      label:
          'Decrease Number of Dice: Current Dice ${ref.watch(multiplierProvider)}',
      child: GestureDetector(
        onTap: () {
          buttonPressAnimation(ref, multiplierMinusButtonPressEffects,
              multiplierMinusButtonPressCondition,
              speed: 100, name: 'Minus');
          ref.watch(multiplierProvider.notifier).decrement();
          SemanticsService.announce(
              '${ref.watch(multiplierProvider)}', TextDirection.ltr);
        },
        onLongPress: () {
          buttonPressAnimation(ref, multiplierMinusButtonPressEffects,
              multiplierMinusButtonPressCondition,
              speed: 300);
          ref.watch(multiplierProvider.notifier).bigDecrement();
        },
        child: Animate(
          adapter:
              TriggerAdapter(ref.watch(multiplierMinusButtonPressCondition)),
          effects: ref.watch(multiplierMinusButtonPressEffects),
          onComplete: (controller) => ref
              .watch(multiplierMinusButtonPressCondition.notifier)
              .state = false,
          child: Stack(
            children: [
              Container(
                height: screenWidth < 600 ? 50 : 120,
                width: screenWidth < 600 ? 70 : screenWidth * .25,
                decoration: BoxDecoration(
                    color: ref.watch(themeProvider).multiplierBgColor,
                    borderRadius: BorderRadius.all(Radius.circular(
                        ref.watch(themeProvider).diceButtonBorderRadius)),
                    boxShadow: [
                      ref.watch(themeProvider).multiplierDropShadow,
                      ref.watch(themeProvider).multiplierOutline,
                    ]),
              ),
              Positioned.fill(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SvgPicture.asset(
                      'assets/minus.svg',
                      colorFilter: ColorFilter.mode(
                          ref.watch(themeProvider).multiplierTextColor,
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
