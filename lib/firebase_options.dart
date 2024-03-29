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
    apiKey: 'AIzaSyCa72_rBDZ9VGTHfkgI7eSCGBpodMb3OV4',
    appId: '1:1055349036301:web:0682637e8ed7f3a04fcc44',
    messagingSenderId: '1055349036301',
    projectId: 'flutter-chat-app-ab3f7',
    authDomain: 'flutter-chat-app-ab3f7.firebaseapp.com',
    storageBucket: 'flutter-chat-app-ab3f7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDisqY2eyAT3EZ0foLLdZYO_zcyUyvrm48',
    appId: '1:1055349036301:android:5efc770c12d51f104fcc44',
    messagingSenderId: '1055349036301',
    projectId: 'flutter-chat-app-ab3f7',
    storageBucket: 'flutter-chat-app-ab3f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASp6hnhlchbtwnWLo3QRKH-XzE342Yrwo',
    appId: '1:1055349036301:ios:f4c2b01c5ce067844fcc44',
    messagingSenderId: '1055349036301',
    projectId: 'flutter-chat-app-ab3f7',
    storageBucket: 'flutter-chat-app-ab3f7.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASp6hnhlchbtwnWLo3QRKH-XzE342Yrwo',
    appId: '1:1055349036301:ios:d66014c0d4288f2d4fcc44',
    messagingSenderId: '1055349036301',
    projectId: 'flutter-chat-app-ab3f7',
    storageBucket: 'flutter-chat-app-ab3f7.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
