import 'package:flutter/material.dart';
import 'reset.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 7, 7, 7), 
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),

      body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Email:'),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)),
              ),
              const SizedBox(
                height: 10,
              ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) => const resScreen(),
                      ),
                    );
                  },
                  child: const Text('Send code'),
                ),            
            ],
          ),
      ),
    );
  }
}
