import 'package:flutter/material.dart';
import './user_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkBoxState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/back.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black12.withOpacity(0.6),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              children: [
                const Padding(padding: EdgeInsets.only(top: 10)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Back to Login Page',
                      textAlign: TextAlign.right),
                ),
                const SizedBox(height: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Image(
                      image: AssetImage('images/bmi_logo.png'),
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(height: 60),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0x99F4716D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          hintText: 'Enter your Email address',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0x99F4716D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Enter Password',
                          border: InputBorder.none,
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0x99F4716D),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: const Color(0xFFB96B6B),
                          value: checkBoxState,
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxState = newValue!;
                            });
                          },
                        ),
                        const Text(
                          'I Accept Terms & Conditions',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child:
                          const Text('SIGN UP', style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xA99D6766),
                        padding: const EdgeInsets.all(12),
                        shape: const StadiumBorder(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
