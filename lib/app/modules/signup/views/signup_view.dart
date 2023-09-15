import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_get/app/routes/app_pages.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/002/037/924/non_2x/abstract-blue-background-with-beautiful-fluid-shapes-free-vector.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              // Logo and Text
              Row(
                children: [
                  // Logo from Google
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/UNIVERSITASTEKNOKRAT.png/1200px-UNIVERSITASTEKNOKRAT.png',
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(width: 8), // Spasi antara logo dan teks
                  // Text "Universitas Teknokrat Indonesia" with uppercase for U, T, and I
                  Text(
                    'U',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  // Text "NIVERSITAS"
                  Text(
                    'NIVERSITAS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'T',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),

                  // Text "NIVERSITAS"
                  Text(
                    'EKNOKRAT',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'I',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  // Text "NIVERSITAS"
                  Text(
                    'NDONESIA',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: controller.cEmail,
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextField(
                      controller: controller.CPass,
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => cAuth.signup(
                          controller.cEmail.text, controller.CPass.text),
                      child: Text("Daftar"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
