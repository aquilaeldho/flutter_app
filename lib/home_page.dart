import 'package:flutter/material.dart';

import 'UI/screens/app_page.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('welcome_bg.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome $name!',
                style: const TextStyle(fontSize:  30, color: Colors.blue),

              ),
              const SizedBox(height:  10),

              const Text(
                'Immerse yourself in a captivating array of meticulously crafted pieces',
                style: TextStyle(fontSize:  20, color: Colors.blue, fontFamily: 'RobotoMono'),

              ),

              const SizedBox(height:  10),

              const SizedBox(height:  20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppPage(),
                    ),
                  );
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
