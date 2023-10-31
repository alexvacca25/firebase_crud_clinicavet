import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud_clinicavet/domain/controller/controlleruser.dart';
import 'package:firebase_crud_clinicavet/ui/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAw1gjMyOfQCgF5tyeYBIH4fLxFykTxpDk",
              authDomain: "movil2023a.firebaseapp.com",
              databaseURL: "https://movil2023a-default-rtdb.firebaseio.com",
              projectId: "movil2023a",
              storageBucket: "movil2023a.appspot.com",
              messagingSenderId: "480105835407",
              appId: "1:480105835407:web:0953b10f6f0edec4f6b9fa"))
      : await Firebase.initializeApp();

  Get.put(ControlUserAuth());
  runApp(const MyApp());
}
