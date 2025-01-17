// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCeJRUlP_T1W0H3U_9TdAQNsCozE8yR8qs',
    appId: '1:123236150028:web:6aa23a7a18384078d97729',
    messagingSenderId: '123236150028',
    projectId: 'fire-spw',
    authDomain: 'fire-spw.firebaseapp.com',
    storageBucket: 'fire-spw.appspot.com',
    measurementId: 'G-433KGRKM1W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA6ek_HcvzBk1xUm1EdeJ87vueOn2fL_DU',
    appId: '1:123236150028:android:be2089bd86d45f9cd97729',
    messagingSenderId: '123236150028',
    projectId: 'fire-spw',
    storageBucket: 'fire-spw.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZqm-NRqIcK0JOCAtIYDMKE3YjGCRfyBE',
    appId: '1:123236150028:ios:1a25168d5703af1cd97729',
    messagingSenderId: '123236150028',
    projectId: 'fire-spw',
    storageBucket: 'fire-spw.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZqm-NRqIcK0JOCAtIYDMKE3YjGCRfyBE',
    appId: '1:123236150028:ios:1a25168d5703af1cd97729',
    messagingSenderId: '123236150028',
    projectId: 'fire-spw',
    storageBucket: 'fire-spw.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCeJRUlP_T1W0H3U_9TdAQNsCozE8yR8qs',
    appId: '1:123236150028:web:4639df8ebc4d544fd97729',
    messagingSenderId: '123236150028',
    projectId: 'fire-spw',
    authDomain: 'fire-spw.firebaseapp.com',
    storageBucket: 'fire-spw.appspot.com',
    measurementId: 'G-91QHFD2N72',
  );
}
