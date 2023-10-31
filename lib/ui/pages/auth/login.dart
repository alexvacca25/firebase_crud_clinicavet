import 'package:firebase_crud_clinicavet/ui/pages/widget/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
                // Aquí iría la lógica para iniciar sesión
                // Puedes usar los controladores emailController y passwordController para obtener los valores
              },
              child: const Text('Iniciar sesión'),
            ),
            TextButton(
                onPressed: () {
                  Get.offAllNamed('/register');
                },
                child: const Text('Crear Cuenta'))
          ],
        ),
      ),
    );
  }
}
