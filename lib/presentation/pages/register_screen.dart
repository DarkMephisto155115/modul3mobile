import 'package:modul3mobile/presentation/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(''),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16,),
            Obx(() {
              return ElevatedButton(
                onPressed: _authController.isLoading.value
                    ? null
                    : () {
                  _authController.registerUser(
                    _emailController.text,
                    _passwordController.text,
                  );
                },
                child: _authController.isLoading.value
                    ? const CircularProgressIndicator()
                    : const Text('Register'),
              );
            }),
          ],
        ),
      ),
    );
  }
}