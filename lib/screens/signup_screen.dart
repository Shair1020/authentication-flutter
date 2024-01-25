import 'package:authentication_flutter/reusable_widgets/reusable_widgets.dart';
import 'package:authentication_flutter/screens/home_screen.dart';
import 'package:authentication_flutter/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Sign Up",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter username", Icons.person_outlined, false,
                  _usernameController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter a  email", Icons.person_outlined, false,
                  _emailController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter username", Icons.person_outlined, true,
                  _passwordController),
              const SizedBox(
                height: 20,
              ),
              firebaseUIButton(context, "SIGN UP", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              }),
            ]),
          )),
        ));
  }
}
