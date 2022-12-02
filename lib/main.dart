import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'config/configuration.dart';
import 'ui/my_app.dart';

Future<void> main() async {
  // this is the key
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  // aquí nos conectamos a los servicios de
  // firebase
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDlrlLHYtLjfAxzVRjWmvXnnNxueyCC9hc",
          authDomain: "onlinewatchat.firebaseapp.com",
          databaseURL: "https://onlinewatchat-default-rtdb.firebaseio.com",
          projectId: "onlinewatchat",
          storageBucket: "onlinewatchat.appspot.com",
          messagingSenderId: "914147607667",
          appId: "1:914147607667:web:46ad03d884453303575606"));
  runApp(const MyApp());
}
