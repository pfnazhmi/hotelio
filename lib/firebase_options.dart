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
    apiKey: 'AIzaSyAaiF_OxxjzJpqtU4kVyGUgw_d2BjG-H-M',
    appId: '1:341041160849:web:fed8eee1ffcb5e85009530',
    messagingSenderId: '341041160849',
    projectId: 'hotelio-eade5',
    authDomain: 'hotelio-eade5.firebaseapp.com',
    storageBucket: 'hotelio-eade5.appspot.com',
    measurementId: 'G-4KVVFWCMGF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEhCxWZtXc5s_l3AyngAAicoVAeGOZW-4',
    appId: '1:341041160849:android:b2720d62e7ea24e1009530',
    messagingSenderId: '341041160849',
    projectId: 'hotelio-eade5',
    storageBucket: 'hotelio-eade5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAa6sL1OfKzxA9m7iXbx-xxzqe3DY45sfM',
    appId: '1:341041160849:ios:4b0631b78d2f554f009530',
    messagingSenderId: '341041160849',
    projectId: 'hotelio-eade5',
    storageBucket: 'hotelio-eade5.appspot.com',
    iosBundleId: 'com.example.hotelio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAa6sL1OfKzxA9m7iXbx-xxzqe3DY45sfM',
    appId: '1:341041160849:ios:7b63db3975ef9531009530',
    messagingSenderId: '341041160849',
    projectId: 'hotelio-eade5',
    storageBucket: 'hotelio-eade5.appspot.com',
    iosBundleId: 'com.example.hotelio.RunnerTests',
  );
}