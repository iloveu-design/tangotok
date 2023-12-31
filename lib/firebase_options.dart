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
    apiKey: 'AIzaSyD14im9svcYvcLbdwZbiFKCwB5f1JktZvo',
    appId: '1:360250360338:web:4a3c6ce6f8757349c40ecb',
    messagingSenderId: '360250360338',
    projectId: 'tangotok-ee127',
    authDomain: 'tangotok-ee127.firebaseapp.com',
    storageBucket: 'tangotok-ee127.appspot.com',
    measurementId: 'G-4V90GH62YS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQEfwmMma9gKgz4SeudgFDtFyn7XeUoak',
    appId: '1:360250360338:android:63e68efef7163a9fc40ecb',
    messagingSenderId: '360250360338',
    projectId: 'tangotok-ee127',
    storageBucket: 'tangotok-ee127.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6MGCuDVQbwq4-LKxSXWnhXwUbdfnHBZk',
    appId: '1:360250360338:ios:e73704b44d5ab943c40ecb',
    messagingSenderId: '360250360338',
    projectId: 'tangotok-ee127',
    storageBucket: 'tangotok-ee127.appspot.com',
    iosBundleId: 'com.example.tangotok',
  );
}
