import 'package:firebase_crud_clinicavet/domain/controller/controlleruser.dart';
import 'package:firebase_crud_clinicavet/ui/pages/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Register({super.key});

  @override
  Widget build(BuildContext context) {
    ControlUserAuth cua = ControlUserAuth();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RoundedTextField(
              labelText: 'Nombre',
              prefixIcon: Icons.person,
              controller: nameController,
            ),
            const SizedBox(height: 20),
            RoundedTextField(
              labelText: 'Correo electrónico',
              prefixIcon: Icons.email,
              controller: emailController,
            ),
            const SizedBox(height: 20),
            RoundedTextField(
              labelText: 'Contraseña',
              prefixIcon: Icons.lock,
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cua.crearUser(emailController.text, passwordController.text);
              },
              child: const Text('Registrarse'),
            ),
            TextButton(
                onPressed: () {
                  Get.offAllNamed('/login');
                },
                child: const Text('Iniciar Sesion'))
          ],
        ),
      ),
    );
  }
}
