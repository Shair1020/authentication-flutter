import 'package:authentication_flutter/reusable_widgets/reusable_widgets.dart';
import 'package:authentication_flutter/screens/signup_screen.dart';
import 'package:authentication_flutter/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              hexStringToColor('#CB2B93'),
              hexStringToColor('#9546C4'),
              hexStringToColor('#5E61F4')
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(children: <Widget>[
                  logoWidget("assets/images/logo1.png"),
                  const SizedBox(
                    height: 30,
                  ),
                  reusableTextField("Enter username", Icons.person_outlined,
                      false, _emailController),
                  const SizedBox(
                    height: 30,
                  ),
                  reusableTextField("Enter password", Icons.lock_outlined, true,
                      _passwordController),
                  const SizedBox(
                    height: 30,
                  ),
                  firebaseUIButton(context, "LOG IN", () {}),
                  signUpOption()
                ]),
              ),
            )));
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignUpScreen()));
            },
            child: const Text(
              "Sign Up",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
