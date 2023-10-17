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
    apiKey: 'AIzaSyC9FEV-3KKbBF8YAqrUbq0vWR48KsT5Aps',
    appId: '1:754800096776:web:8956029fa88b0bbefc03bd',
    messagingSenderId: '754800096776',
    projectId: 'nomads-digital',
    authDomain: 'nomads-digital.firebaseapp.com',
    storageBucket: 'nomads-digital.appspot.com',
    measurementId: 'G-M4ST1R0PCW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD01rwqbuaHRM2r3-4K04wQxEsDBP0VON4',
    appId: '1:754800096776:android:54d9c018b1b18db6fc03bd',
    messagingSenderId: '754800096776',
    projectId: 'nomads-digital',
    storageBucket: 'nomads-digital.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_MuyTXOGp4CgvNAnW-aT3bRDD_QojyvQ',
    appId: '1:754800096776:ios:789863afe1f8e4e5fc03bd',
    messagingSenderId: '754800096776',
    projectId: 'nomads-digital',
    storageBucket: 'nomads-digital.appspot.com',
    iosBundleId: 'com.example.nomads',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA_MuyTXOGp4CgvNAnW-aT3bRDD_QojyvQ',
    appId: '1:754800096776:ios:fe343a87882ddfedfc03bd',
    messagingSenderId: '754800096776',
    projectId: 'nomads-digital',
    storageBucket: 'nomads-digital.appspot.com',
    iosBundleId: 'com.example.nomads.RunnerTests',
  );
}