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
    apiKey: 'AIzaSyA36Qhxgrj_r4ajIL5ao67IYKvviUYAAfs',
    appId: '1:852592433445:web:5311a57740d8e1df0122cc',
    messagingSenderId: '852592433445',
    projectId: 'graduationproject-79c06',
    authDomain: 'graduationproject-79c06.firebaseapp.com',
    storageBucket: 'graduationproject-79c06.appspot.com',
    measurementId: 'G-6BFTG3X75Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1k4Ax4LU_yYphlSJrcMwTVfw_raibQRI',
    appId: '1:852592433445:android:b6f958c1b36b15d60122cc',
    messagingSenderId: '852592433445',
    projectId: 'graduationproject-79c06',
    storageBucket: 'graduationproject-79c06.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAx6mP8r7Tmfxet2x9M6vle4z3fMpEok1I',
    appId: '1:852592433445:ios:8e425ca25e0c03970122cc',
    messagingSenderId: '852592433445',
    projectId: 'graduationproject-79c06',
    storageBucket: 'graduationproject-79c06.appspot.com',
    iosClientId: '852592433445-qeclhjbcgh89o9lg3br1l5bbhbhecipa.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAx6mP8r7Tmfxet2x9M6vle4z3fMpEok1I',
    appId: '1:852592433445:ios:c2fe067e471709d70122cc',
    messagingSenderId: '852592433445',
    projectId: 'graduationproject-79c06',
    storageBucket: 'graduationproject-79c06.appspot.com',
    iosClientId: '852592433445-3um3gemg0hm9qpqobts95nj4km0o3fa7.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication5.RunnerTests',
  );
}
