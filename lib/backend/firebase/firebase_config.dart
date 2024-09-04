import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA9PyH630YQZaOeIF6WG9mw4lg3joK3TUc",
            authDomain: "p-c-e-study-app-ocfg7z.firebaseapp.com",
            projectId: "p-c-e-study-app-ocfg7z",
            storageBucket: "p-c-e-study-app-ocfg7z.appspot.com",
            messagingSenderId: "153993816171",
            appId: "1:153993816171:web:9619862a8a6d39251e692e"));
  } else {
    await Firebase.initializeApp();
  }
}
