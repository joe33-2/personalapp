import 'package:flutter/material.dart';
import 'package:log_in/login.dart';
import 'main.dart';

class ReEnter extends StatelessWidget {
  const ReEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
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
             
              const Text(
                'Reset password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'New password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock)
                  ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Re enter password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock)
                  ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                );
              }, child: const Text('Confirm'))
            ],
          ),
      ),
    );
  }
}
