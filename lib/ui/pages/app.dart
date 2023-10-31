import 'package:firebase_crud_clinicavet/ui/pages/auth/login.dart';
import 'package:firebase_crud_clinicavet/ui/pages/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/login",
      routes: {
        '/login': (context) => Login(),
        '/register': (context) =>  Register()
      },
    );
  }
}
