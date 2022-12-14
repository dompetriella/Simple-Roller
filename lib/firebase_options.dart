// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDm_5OM8qEX8q42Q_0CpBgpS2BsMaaXYnI',
    appId: '1:191900571185:web:519e59c87b378c32f06710',
    messagingSenderId: '191900571185',
    projectId: 'simple-roller',
    authDomain: 'simple-roller.firebaseapp.com',
    storageBucket: 'simple-roller.appspot.com',
    measurementId: 'G-G6P00S8RX8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBH1Q9KH4anUD-1eJQgRr5ppknPSajVlx0',
    appId: '1:191900571185:android:c10380310d1d5b78f06710',
    messagingSenderId: '191900571185',
    projectId: 'simple-roller',
    storageBucket: 'simple-roller.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJM7Qk0orBUqMTo0PtPrrli2T0cgaLjZo',
    appId: '1:191900571185:ios:d209667b71d4c794f06710',
    messagingSenderId: '191900571185',
    projectId: 'simple-roller',
    storageBucket: 'simple-roller.appspot.com',
    iosClientId: '191900571185-pb9qav6uvjr8pdqnut8java8ss2gef2c.apps.googleusercontent.com',
    iosBundleId: 'com.example.diceRoller',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJM7Qk0orBUqMTo0PtPrrli2T0cgaLjZo',
    appId: '1:191900571185:ios:d209667b71d4c794f06710',
    messagingSenderId: '191900571185',
    projectId: 'simple-roller',
    storageBucket: 'simple-roller.appspot.com',
    iosClientId: '191900571185-pb9qav6uvjr8pdqnut8java8ss2gef2c.apps.googleusercontent.com',
    iosBundleId: 'com.example.diceRoller',
  );
}
