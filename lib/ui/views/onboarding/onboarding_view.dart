import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/widgets/button_component.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore the world of Kistpay'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: 'Login',
              onPressed: () {},
            ),
          ),
          Container(
            width: double.infinity, // Full width
            padding: const EdgeInsets.all(16.0),
            child: ButtonComponent(
              buttonText: 'Signup',
              onPressed: () {},
              bgColor: Colors.white,
              buttonTxtColor: Colors.black,
              borderColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
