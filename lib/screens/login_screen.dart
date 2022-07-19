import 'package:ambad2/screens/home_screen.dart';
import 'package:ambad2/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _globalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Email",
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.black87,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Colors.black, width: 1.6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Colors.black, width: 1.6),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter Password",
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.black87,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2.2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Colors.black, width: 1.6),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(color: Colors.black, width: 1.6),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: MaterialButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Successfully login"),
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              },
              color: Color.fromARGB(255, 245, 20, 95),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              height: 60,
              minWidth: double.infinity,
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have account yet?",
                style: TextStyle(fontSize: 16),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Signup",
                  style: TextStyle(fontSize: 16, color: Colors.orangeAccent),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
