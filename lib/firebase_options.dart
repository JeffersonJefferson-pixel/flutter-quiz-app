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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFwnTty9FfAg5ij5lqUhAdnHiekyjdzao',
    appId: '1:463889591447:android:6c3a43d7bfbd350a8c4dd2',
    messagingSenderId: '463889591447',
    projectId: 'quizapp-7db89',
    storageBucket: 'quizapp-7db89.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhP2L9C2zUMQ-KTKMkmsl_4u-aqCTlSdU',
    appId: '1:463889591447:ios:ba2fbb5e03301f598c4dd2',
    messagingSenderId: '463889591447',
    projectId: 'quizapp-7db89',
    storageBucket: 'quizapp-7db89.appspot.com',
    iosClientId: '463889591447-vao4l9g1m3at7fa6tea9be3ph8a0q4bh.apps.googleusercontent.com',
    iosBundleId: 'io.peanutbutter.quizapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhP2L9C2zUMQ-KTKMkmsl_4u-aqCTlSdU',
    appId: '1:463889591447:ios:ba2fbb5e03301f598c4dd2',
    messagingSenderId: '463889591447',
    projectId: 'quizapp-7db89',
    storageBucket: 'quizapp-7db89.appspot.com',
    iosClientId: '463889591447-vao4l9g1m3at7fa6tea9be3ph8a0q4bh.apps.googleusercontent.com',
    iosBundleId: 'io.peanutbutter.quizapp',
  );
}