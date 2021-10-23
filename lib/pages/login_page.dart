import 'package:flutter/material.dart';
import './signup_page.dart';
import './user_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                GestureDetector(
                  child: const Text('Don\'t have a ID?',
                      textAlign: TextAlign.right),
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    });
                  },
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
                          hintText: 'Email or User ID',
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
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Password',
                          border: InputBorder.none,
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
                          'Remember Me',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UserInput()),
                          );
                        });
                      },
                      child:
                          const Text('LOGIN', style: TextStyle(fontSize: 20)),
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
