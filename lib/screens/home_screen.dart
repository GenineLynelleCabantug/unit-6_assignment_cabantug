import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture and Navigation"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple, 
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is supposed to be a Home Screen",
              style: TextStyle(fontSize: 24),
            ),

            // INSERT CODE BELOW
            SizedBox(height: 30),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, 'aboutme'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple, 
              ),
              child: Text(
                "Go to About Me",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

