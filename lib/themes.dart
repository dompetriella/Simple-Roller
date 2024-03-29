import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:dice_roller/models/theme.dart';

Color hex(String code) {
  String colorString = '0xFF$code';
  return Color(int.parse(colorString));
}

var defaultTheme = AppTheme(
  themeName: "Daylight",
  themeColors: [hex('423B52'), hex('AAC6C3'), hex('D9D9D9'), hex('990000')],
  bgColor: daylightBg,
  numberDisplayBgColor: daylightSecondary,
  diceIconBgColor: daylightPrimary,
  diceTypeBgColor: daylightPrimary,
  rollButtonBgColor: daylightAccent,
  multiplierTextColor: daylightPrimary,
  diceButtonBg: daylightPrimary,
  diceButtonInputColorBg: Colors.white,
  drawerBg: daylightPrimary,
  drawerColumnBg: daylightBg,
  drawerColumnTextColor: Colors.black,
  drawerHistorySliverBg: daylightSecondary,
  drawerStatsIconBg: daylightPrimary,
  drawerStatsColorBg: Colors.white,
);

Map<String, AppTheme> themesDictionary = {
  'DayLight': AppTheme(
    themeName: "Daylight",
    themeColors: [hex('423B52'), hex('AAC6C3'), hex('D9D9D9'), hex('990000')],
    bgColor: daylightBg,
    numberDisplayBgColor: daylightSecondary,
    diceIconBgColor: daylightPrimary,
    diceTypeBgColor: daylightPrimary,
    rollButtonBgColor: daylightAccent,
    multiplierTextColor: daylightPrimary,
    diceButtonBg: daylightPrimary,
    diceButtonInputColorBg: Colors.white,
    drawerBg: daylightPrimary,
    drawerColumnBg: daylightBg,
    drawerColumnTextColor: Colors.black,
    drawerHistorySliverBg: daylightSecondary,
    drawerStatsIconBg: daylightPrimary,
    drawerStatsColorBg: Colors.white,
  ),
  'Sunset': AppTheme(
      themeName: "Sunset",
      themeColors: [sunsetPrimary, sunsetAccent, sunsetBg],
      bgColor: sunsetBg,
      numberDisplayDropShadow: BoxShadow(
          spreadRadius: 2, color: sunsetPrimary, blurRadius: 15, inset: true),
      numberDisplayBgColor: sunsetBg,
      diceIconBgColor: sunsetPrimary,
      diceTypeBgColor: sunsetPrimary,
      diceTypeStrokeColor: sunsetBg,
      diceIconTextColor: sunsetBg,
      numberDisplayTextColor: sunsetPrimary,
      rollButtonBgColor: sunsetAccent,
      rollButtonTextColor: sunsetBg,
      multiplierTextColor: sunsetPrimary,
      diceButtonBg: sunsetPrimary,
      diceButtonTextColor: sunsetBg,
      diceButtonInputColorBg: Colors.black,
      diceButtonInnerShadow:
          BoxShadow(color: hex('392033'), blurRadius: 25, inset: true),
      drawerBg: sunsetBg,
      drawerColumnBg: Colors.black,
      drawerColumnContentBg: Colors.black,
      drawerColumnTextColor: sunsetPrimary,
      drawerThemesBg: Colors.black,
      drawerHistorySliverBg: sunsetBg,
      drawerHistorySliverTextColor: Colors.white,
      drawerStatsIconBg: Colors.black,
      drawerStatsColorBg: Colors.black,
      diceButtonInputTextColor: Colors.black,
      multiplierBgColor: Colors.black),
  'Twilight': AppTheme(
      themeName: "Twilight",
      themeColors: [
        Colors.black,
        daylightSecondary,
        Colors.white,
        hex('DB893D')
      ],
      bgColor: Colors.black,
      numberDisplayBgColor: daylightSecondary,
      diceIconBgColor: Colors.black,
      diceTypeBgColor: Colors.black,
      rollButtonBgColor: hex('DB893D'),
      multiplierTextColor: Colors.black,
      diceButtonBg: daylightSecondary,
      diceButtonInputColorBg: Colors.white,
      drawerBg: daylightSecondary,
      drawerColumnBg: Colors.black,
      drawerColumnContentBg: Colors.black,
      drawerColumnTextColor: hex('DB893D'),
      drawerHistorySliverBg: daylightSecondary,
      drawerStatsIconBg: Colors.black,
      drawerStatsColorBg: Colors.white,
      rollButtonTextColor: Colors.black,
      diceButtonTextColor: Colors.black,
      diceButtonInputTextColor: Colors.black,
      multiplierBgColor: daylightSecondary),
  'Midnight': AppTheme(
      themeName: "Midnight",
      themeColors: [
        Colors.black,
        Colors.white,
      ],
      bgColor: Colors.black,
      numberDisplayBgColor: Colors.black,
      diceIconBgColor: Colors.black,
      diceTypeBgColor: Colors.black,
      diceTypeStrokeColor: Colors.white,
      diceIconTextColor: Colors.white,
      numberDisplayTextColor: Colors.white,
      rollButtonBgColor: Colors.white,
      rollButtonTextColor: Colors.black,
      multiplierTextColor: Colors.white,
      multiplierOutline: const BoxShadow(color: Colors.white, spreadRadius: 1),
      diceButtonBg: Colors.black,
      diceButtonOutline: const BoxShadow(color: Colors.white, spreadRadius: 1),
      diceButtonInnerShadow:
          const BoxShadow(color: Colors.white, blurRadius: 25, inset: true),
      diceButtonInputColorBg: Colors.black,
      drawerBg: Colors.black,
      drawerColumnBg: Colors.black,
      drawerColumnContentBg: Colors.black,
      drawerColumnTextColor: Colors.white,
      drawerThemesBg: Colors.black,
      drawerHistorySliverBg: Colors.black,
      drawerHistorySliverTextColor: Colors.white,
      drawerStatsIconBg: Colors.black,
      drawerStatsColorBg: Colors.black,
      diceButtonTextColor: Colors.white,
      diceButtonInputTextColor: Colors.black,
      multiplierBgColor: Colors.black),
  'Verdant': AppTheme(
    themeName: "Verdant",
    themeColors: [verdantBg, verdantPrimary, verdantSecondary, verdantAccent],
    bgColor: verdantBg,
    numberDisplayBgColor: verdantSecondary,
    numberDisplayTextColor: verdantBg,
    diceIconBgColor: verdantPrimary,
    diceTypeBgColor: verdantPrimary,
    rollButtonBgColor: verdantAccent,
    multiplierTextColor: verdantBg,
    diceButtonBg: verdantPrimary,
    diceButtonInputColorBg: verdantSecondary,
    drawerBg: verdantPrimary,
    drawerColumnBg: verdantBg,
    drawerColumnTextColor: Colors.white,
    drawerHistorySliverBg: verdantSecondary,
    drawerStatsIconBg: verdantPrimary,
    drawerStatsColorBg: Colors.white,
  ),
  'Harvest': AppTheme(
      themeName: "Harvest",
      themeColors: [harvestBg, harvestSecondary, harvestAccent, harvestPrimary],
      bgColor: harvestBg,
      numberDisplayBgColor: harvestSecondary,
      numberDisplayTextColor: Colors.white,
      diceIconBgColor: harvestBg,
      diceTypeBgColor: harvestBg,
      rollButtonBgColor: harvestAccent,
      rollButtonTextColor: Colors.black,
      multiplierTextColor: Colors.white,
      multiplierBgColor: harvestSecondary,
      diceButtonBg: harvestPrimary,
      diceButtonInputColorBg: harvestSecondary,
      drawerBg: harvestSecondary,
      drawerColumnBg: harvestBg,
      drawerColumnTextColor: harvestAccent,
      drawerHistorySliverBg: harvestSecondary,
      drawerHistorySliverTextColor: Colors.white,
      drawerStatsIconBg: harvestPrimary,
      drawerStatsColorBg: Colors.white),
  'Mire': AppTheme(
      themeName: "Mire",
      themeColors: [mireBg, mirePrimary, mireAccent],
      bgColor: mireBg,
      numberDisplayBgColor: mirePrimary,
      numberDisplayTextColor: Colors.white70,
      diceIconBgColor: mireBg,
      diceTypeBgColor: mireBg,
      rollButtonBgColor: mireAccent,
      multiplierTextColor: mirePrimary,
      multiplierBgColor: Colors.white70,
      diceButtonBg: mirePrimary,
      diceButtonInputColorBg: mireAccent,
      diceButtonTextColor: Colors.white70,
      drawerBg: mirePrimary,
      drawerColumnBg: mireBg,
      drawerColumnTextColor: Colors.white70,
      drawerHistorySliverBg: mireBg,
      drawerHistorySliverTextColor: Colors.white,
      drawerStatsIconBg: mireBg,
      drawerStatsColorBg: Colors.white),
  'Glacier': AppTheme(
    themeName: "Glacier",
    themeColors: [glacierBg, glacierPrimary, glacierSecondary, glacierAccent],
    bgColor: glacierBg,
    numberDisplayBgColor: glacierSecondary,
    numberDisplayTextColor: glacierBg,
    diceIconBgColor: glacierPrimary,
    diceTypeBgColor: glacierPrimary,
    rollButtonBgColor: glacierAccent,
    multiplierTextColor: glacierBg,
    diceButtonBg: glacierPrimary,
    diceButtonTextColor: glacierSecondary,
    diceButtonInputColorBg: glacierSecondary,
    drawerBg: glacierPrimary,
    drawerColumnBg: glacierBg,
    drawerColumnTextColor: glacierSecondary,
    drawerHistorySliverBg: glacierSecondary,
    drawerStatsIconBg: glacierPrimary,
    drawerStatsColorBg: glacierSecondary,
  ),
  'Nightshade': AppTheme(
    themeName: "Nightshade",
    themeColors: [nightshadePrimary, nightshadeBg, nightshadeAccent],
    bgColor: nightshadeBg,
    numberDisplayDropShadow: BoxShadow(
        spreadRadius: 2, color: nightshadeAccent, blurRadius: 15, inset: true),
    numberDisplayBgColor: nightshadePrimary,
    diceIconBgColor: nightshadePrimary,
    diceTypeBgColor: nightshadePrimary,
    diceTypeStrokeColor: Colors.white,
    diceIconTextColor: Colors.white,
    numberDisplayTextColor: Colors.white,
    rollButtonBgColor: nightshadeAccent,
    rollButtonTextColor: nightshadeBg,
    multiplierTextColor: Colors.white,
    multiplierBgColor: nightshadePrimary,
    diceButtonBg: nightshadePrimary,
    diceButtonTextColor: Colors.white,
    diceButtonInputColorBg: nightshadeAccent,
    diceButtonInnerShadow:
        BoxShadow(color: hex('BF9EE8'), blurRadius: 25, inset: true),
    drawerBg: nightshadePrimary,
    drawerColumnBg: nightshadeBg,
    drawerColumnContentBg: nightshadePrimary,
    drawerColumnTextColor: nightshadeAccent,
    drawerThemesBg: nightshadePrimary,
    drawerHistorySliverBg: nightshadePrimary,
    drawerHistorySliverTextColor: Colors.white,
    drawerStatsIconBg: Colors.black,
    drawerStatsColorBg: Colors.black,
    diceButtonInputTextColor: Colors.black,
  ),
  'Pulse': AppTheme(
    themeName: "Pulse",
    themeColors: [pulseSecondary, pulseBg, pulsePrimary, pulseAccent],
    bgColor: pulseBg,
    diceIconBorderRadius: 100,
    diceTypeBorderRadius: 100,
    numberDisplayBorderRadius: 50,
    diceButtonBorderRadius: 500,
    numberDisplayBgColor: pulseSecondary,
    numberDisplayTextColor: pulseAccent,
    diceIconBgColor: pulsePrimary,
    diceTypeBgColor: pulsePrimary,
    diceIconTextColor: pulseAccent,
    diceTypeStrokeColor: pulseAccent,
    rollButtonBgColor: pulseAccent,
    rollButtonTextColor: pulseSecondary,
    multiplierTextColor: pulsePrimary,
    multiplierBgColor: pulseSecondary,
    diceButtonBg: pulsePrimary,
    diceButtonInputColorBg: pulseAccent,
    drawerBg: pulsePrimary,
    drawerColumnBg: pulseBg,
    drawerColumnContentBg: pulseSecondary,
    drawerColumnTextColor: pulseAccent,
    drawerHistorySliverBg: pulsePrimary,
    drawerHistorySliverTextColor: pulseAccent,
    drawerStatsIconBg: pulsePrimary,
    drawerStatsColorBg: pulsePrimary,
  ),
  'Fireball': AppTheme(
    themeName: "Fireball",
    themeColors: [
      fireballBg,
      fireballPrimary,
      fireballSecondary,
      fireballAccent
    ],
    bgColor: fireballBg,
    numberDisplayBgColor: fireballSecondary,
    numberDisplayTextColor: fireballBg,
    diceIconBgColor: fireballPrimary,
    diceTypeBgColor: fireballPrimary,
    rollButtonBgColor: fireballAccent,
    multiplierTextColor: fireballBg,
    diceButtonBg: fireballPrimary,
    diceButtonTextColor: fireballSecondary,
    diceButtonInputColorBg: fireballSecondary,
    drawerBg: fireballPrimary,
    drawerColumnBg: fireballBg,
    drawerColumnTextColor: fireballSecondary,
    drawerHistorySliverBg: fireballSecondary,
    drawerHistorySliverTextColor: fireballBg,
    drawerStatsIconBg: fireballPrimary,
    drawerStatsColorBg: Colors.white,
  ),
  'Whirlwind': AppTheme(
    themeName: "Whirlwind",
    themeColors: [gustSecondary, gustAccent, gustPrimary, gustBg],
    bgColor: gustBg,
    numberDisplayBgColor: gustSecondary,
    numberDisplayTextColor: Colors.black54,
    diceIconBgColor: gustBg,
    diceTypeBgColor: gustBg,
    diceIconTextColor: Colors.black87,
    diceTypeStrokeColor: Colors.black87,
    rollButtonBgColor: gustAccent,
    rollButtonTextColor: Colors.black87,
    multiplierTextColor: Colors.black54,
    diceButtonBg: gustPrimary,
    diceButtonTextColor: Colors.black54,
    diceButtonInputColorBg: gustSecondary,
    drawerBg: gustPrimary,
    drawerColumnBg: gustBg,
    drawerColumnContentBg: gustSecondary,
    drawerThemesBg: gustSecondary,
    drawerColumnTextColor: Colors.black87,
    drawerHistorySliverBg: gustPrimary,
    drawerStatsIconBg: gustPrimary,
    drawerStatsColorBg: gustAccent,
  ),
  'Faerie': AppTheme(
      themeName: "Faerie",
      themeColors: [faeriePrimary, faerieBg, faerieSecondary, faerieAccent],
      bgColor: faerieBg,
      numberDisplayBgColor: faerieSecondary,
      diceIconBgColor: faeriePrimary,
      diceTypeBgColor: faeriePrimary,
      rollButtonBgColor: faerieAccent,
      multiplierTextColor: faeriePrimary,
      diceButtonBg: faeriePrimary,
      diceButtonInputColorBg: Colors.white,
      drawerBg: faerieAccent,
      drawerColumnBg: faeriePrimary,
      drawerColumnTextColor: Colors.black,
      drawerHistorySliverBg: faerieBg,
      drawerStatsIconBg: faeriePrimary,
      drawerStatsColorBg: faerieBg,
      diceButtonBorderRadius: 100,
      diceButtonTextColor: Colors.black,
      diceIconBorderRadius: 100,
      diceTypeBorderRadius: 100,
      numberDisplayBorderRadius: 50,
      diceTypeStrokeColor: Colors.black,
      diceIconTextColor: Colors.black,
      drawerNegativeSpace: faerieAccent),
  'Abyssal': AppTheme(
      themeName: "Abyssal",
      themeColors: [abyssalAccent, abyssalPrimary, abyssalSecondary],
      bgColor: abyssalPrimary,
      numberDisplayBgColor: abyssalSecondary,
      diceIconBgColor: abyssalPrimary,
      diceTypeBgColor: abyssalPrimary,
      rollButtonBgColor: abyssalAccent,
      multiplierTextColor: Colors.white,
      diceButtonBg: Colors.black,
      diceButtonInputColorBg: abyssalPrimary,
      drawerBorderRadius: 0,
      diceIconBorderRadius: 0,
      diceTypeBorderRadius: 0,
      diceButtonBorderRadius: 0,
      numberDisplayBorderRadius: 0,
      drawerBg: Colors.black,
      drawerColumnBg: abyssalPrimary,
      drawerColumnTextColor: abyssalAccent,
      drawerHistorySliverBg: Colors.black,
      drawerStatsIconBg: abyssalPrimary,
      drawerStatsColorBg: Colors.black,
      rollButtonTextColor: Colors.black,
      multiplierBgColor: Colors.black,
      numberDisplayTextColor: Colors.white,
      drawerThemesBg: Colors.white,
      themeBarBorderRadius: 0,
      drawerHistorySliverTextColor: Colors.white,
      drawerColumnContentBg: Colors.black,
      drawerHistorySliverOutline: BoxShadow(
        color: abyssalAccent,
        spreadRadius: 1,
      )),
  'Obelisk': AppTheme(
    themeName: "Obelisk",
    themeColors: [obeliskAccent, obeliskPrimary, obeliskBg, obeliskSecondary],
    bgColor: obeliskBg,
    numberDisplayBgColor: obeliskSecondary,
    diceIconBgColor: obeliskPrimary,
    diceTypeBgColor: obeliskPrimary,
    rollButtonBgColor: obeliskAccent,
    multiplierTextColor: obeliskPrimary,
    diceButtonBg: obeliskPrimary,
    diceButtonInputColorBg: Colors.white,
    drawerBg: obeliskPrimary,
    drawerColumnBg: obeliskBg,
    drawerColumnTextColor: obeliskAccent,
    drawerHistorySliverBg: obeliskSecondary,
    drawerHistorySliverTextColor: obeliskAccent,
    drawerStatsIconBg: obeliskPrimary,
    drawerStatsColorBg: Colors.white,
  ),
  'Daybreak': AppTheme(
      themeName: "Daybreak",
      themeColors: [
        Colors.white,
        Colors.black,
      ],
      innerShadow: const BoxShadow(),
      drawerBorderRadius: 0,
      diceIconBorderRadius: 0,
      diceTypeBorderRadius: 0,
      themeBarBorderRadius: 0,
      diceButtonBorderRadius: 0,
      numberDisplayBorderRadius: 0,
      bgColor: Colors.white,
      numberDisplayBgColor: Colors.white,
      diceIconBgColor: Colors.white,
      diceTypeBgColor: Colors.white,
      diceTypeStrokeColor: Colors.black,
      diceIconTextColor: Colors.black,
      numberDisplayTextColor: Colors.black,
      rollButtonBgColor: Colors.black,
      rollButtonTextColor: Colors.white,
      multiplierTextColor: Colors.black,
      multiplierOutline: const BoxShadow(color: Colors.black, spreadRadius: 1),
      diceButtonBg: Colors.white,
      diceButtonOutline: const BoxShadow(color: Colors.black, spreadRadius: 1),
      diceButtonInnerShadow:
          const BoxShadow(color: Colors.black, blurRadius: 25, inset: true),
      diceButtonInputColorBg: Colors.white,
      drawerBg: Colors.white,
      drawerColumnBg: Colors.white,
      drawerColumnContentBg: Colors.white,
      drawerColumnTextColor: Colors.black,
      drawerThemesBg: Colors.white,
      drawerHistorySliverBg: Colors.white,
      drawerHistorySliverTextColor: Colors.black,
      drawerStatsIconBg: Colors.white,
      drawerStatsColorBg: Colors.white,
      diceButtonTextColor: Colors.black,
      diceButtonInputTextColor: Colors.white,
      multiplierBgColor: Colors.white),
};

var daylightBg = hex('AAC6C3');
var daylightPrimary = hex('423B52');
var daylightSecondary = hex('D9D9D9');
var daylightAccent = hex('990000');

var verdantBg = hex('1C4A1B');
var verdantPrimary = hex('3B8E39');
var verdantSecondary = hex('BDEEAC');
var verdantAccent = hex('50B5B5');

var glacierBg = hex('1B073D');
var glacierPrimary = hex('2A4ABB');
var glacierSecondary = hex('ADF3F3');
var glacierAccent = hex('895AC5');

var fireballBg = hex('401717');
var fireballPrimary = hex('CA6821');
var fireballSecondary = hex('F1F99E');
var fireballAccent = hex('F93535');

var obeliskPrimary = hex('515151');
var obeliskSecondary = daylightSecondary;
var obeliskBg = hex('888888');
var obeliskAccent = hex('28272F');

var abyssalPrimary = hex('4F1315');
var abyssalSecondary = Colors.black;
var abyssalAccent = hex('F3DB59');

var faeriePrimary = hex('2CE8E8');
var faerieSecondary = Colors.white;
var faerieBg = hex('B2FBFB');
var faerieAccent = hex('FF81BD');

var sunsetPrimary = hex('FFE577');
var sunsetBg = hex('392033');
var sunsetAccent = hex('FD6051');

var harvestPrimary = hex('AF4A00');
var harvestSecondary = hex('5B8D27');
var harvestAccent = hex('EFB00A');
var harvestBg = hex('114B0B');

var mirePrimary = hex('1F545D');
var mireAccent = hex('2F7D56');
var mireBg = hex('1C1531');

var nightshadePrimary = hex('120429');
var nightshadeAccent = hex('BF9EE8');
var nightshadeBg = hex('1B073D');

var pulsePrimary = hex('9B1B3B');
var pulseSecondary = hex('241002');
var pulseAccent = hex('FDF2E1');
var pulseBg = hex('430D0B');

var gustPrimary = hex('A7E7FE');
var gustSecondary = hex('F1FBFF');
var gustAccent = hex('FFD1AF');
var gustBg = hex('CDFFFC');
