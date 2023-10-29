// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2oEd1GUH6BQGEmGsuHezAl5_fg9mKm9o',
    appId: '1:10627235609:android:8e734a1e40e7d29cf6cf88',
    messagingSenderId: '10627235609',
    projectId: 'whatsapp-clone-d2f89',
    storageBucket: 'whatsapp-clone-d2f89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLtjp8THTYV54_-Brkco-6R6p2i7Mhz48',
    appId: '1:10627235609:ios:1d0c5b34177b48e2f6cf88',
    messagingSenderId: '10627235609',
    projectId: 'whatsapp-clone-d2f89',
    storageBucket: 'whatsapp-clone-d2f89.appspot.com',
    iosBundleId: 'com.example.whatsappClone',
  );
}