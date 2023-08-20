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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD_axJxqHi128BGMHLAFmZdbJ1A8NZzfdc',
    appId: '1:605986248032:web:a992feea3af4ff1865fa05',
    messagingSenderId: '605986248032',
    projectId: 'itisummertraining',
    authDomain: 'itisummertraining.firebaseapp.com',
    storageBucket: 'itisummertraining.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvuCJUGC1SbLRyjvxIcmYXKlQLkpHt-lc',
    appId: '1:605986248032:android:a9453a74c9ac4bfd65fa05',
    messagingSenderId: '605986248032',
    projectId: 'itisummertraining',
    storageBucket: 'itisummertraining.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbWQ_F0vT0OY5K0Hg7VMsC2_rcqM32ZbA',
    appId: '1:605986248032:ios:b00529d9745a809965fa05',
    messagingSenderId: '605986248032',
    projectId: 'itisummertraining',
    storageBucket: 'itisummertraining.appspot.com',
    iosClientId: '605986248032-g7v5rp3jg7071dl06ue3cjis8rt22490.apps.googleusercontent.com',
    iosBundleId: 'com.example.itiFinalProject',
  );
}