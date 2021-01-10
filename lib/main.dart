import 'package:flutter/material.dart';
import 'package:flutter_play/ui/inputs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RoundedInput('Enter your name', Icon(Icons.person)),
              RoundedInput('Enter your email address', Icon(Icons.mail)),
              RoundedInput('Enter your password', Icon(Icons.lock)),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
                onPressed: () => print("it's pressed"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
