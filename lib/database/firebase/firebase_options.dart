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
    apiKey: 'AIzaSyDRuB487oxdbbv0WvhX-mQrQ6Q46I5qhi0',
    appId: '1:884599557950:web:fbfd7e3c6a04559868666f',
    messagingSenderId: '884599557950',
    projectId: 'paskalapp-c0d0d',
    authDomain: 'paskalapp-c0d0d.firebaseapp.com',
    storageBucket: 'paskalapp-c0d0d.appspot.com',
    measurementId: 'G-2R3Y7C17LZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfyNcU4hLZ8aLTAxf8_Pd2zUXbOeoAmns',
    appId: '1:884599557950:android:d20e195b7bf325ae68666f',
    messagingSenderId: '884599557950',
    projectId: 'paskalapp-c0d0d',
    storageBucket: 'paskalapp-c0d0d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATVhsvJNrKHWnEqT4KeZoxk3keMwhIrCc',
    appId: '1:884599557950:ios:eb82454993180cc868666f',
    messagingSenderId: '884599557950',
    projectId: 'paskalapp-c0d0d',
    storageBucket: 'paskalapp-c0d0d.appspot.com',
    iosBundleId: 'com.Nathan.paskalapps',
  );
}
