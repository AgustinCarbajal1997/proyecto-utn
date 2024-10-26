import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//login
class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  final String title;

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  void togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.mail),
                        hintText: 'Introduce tu mail',
                        labelText: 'Mail *',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _isHidden,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        hintText: 'Introduce tu contraseña',
                        labelText: 'Contraseña *',
                        suffixIcon: IconButton(
                          icon: Icon(_isHidden
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: togglePasswordView,
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  //if (_formKey.currentState!.validate()) {
                  //  // If the form is valid, display a snackbar. In the real world,
                  //  // you'd often call a server or save the information in a database.
                  //  ScaffoldMessenger.of(context).showSnackBar(
                  //    const SnackBar(content: Text('Processing Data')),
                  //  );
                  //}
                  Navigator.pushNamed(context, "/home");
                  //fetchUsers();
                  //Navigator.pushReplacementNamed(context, "/home") reemplaza
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
