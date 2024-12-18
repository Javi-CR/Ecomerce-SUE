import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBwaZobzk-WdceCpzlipeFquJtJtdQs64A",
            authDomain: "ecommerce-s-u-e-hvkgdr.firebaseapp.com",
            projectId: "ecommerce-s-u-e-hvkgdr",
            storageBucket: "ecommerce-s-u-e-hvkgdr.firebasestorage.app",
            messagingSenderId: "511032399192",
            appId: "1:511032399192:web:13fe491b077620969c812d"));
  } else {
    await Firebase.initializeApp();
  }
}
