import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iti_final_project/view/pages/HomeScreen/home_screen.dart';
import 'package:iti_final_project/view/pages/auth/signup_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';


class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static String id = "Login Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset(splashScreen),
                // const SizedBox(
                //   height: 10.0,
                // ),
                // const Text(
                //   "ScholarChat",
                //   style: TextStyle(
                //     color: kPrimaryColorWhite,
                //     fontSize: 30,
                //     fontFamily: "pacifico",
                //   ),
                // ),
                // const SizedBox(
                //   height: 25.0,
                // ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: kPrimaryColorWhite,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                  hintText: "Email",
                  onChanged: (data)=> email = data,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                  obscureText: true,
                  hintText: "Password",
                  onChanged: (data)=> password = data,
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(text: "Sign In",
                  onTap: () async{
                  if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                    try {
                      await loginUser();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const HomeScreen(),));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                        const SnackBar(content: Text('No user found for that email.'));
                      } else if (e.code == 'wrong-password') {
                        const SnackBar(content: Text('Wrong password provided for that user.'));
                      }
                    }
                      isLoading = false;
                      setState(() {});
                  } else {}
                  },
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                        color: kPrimaryColorWhite,
                        fontSize: 17.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "  Register",
                        style: TextStyle(
                          color: kPrimaryColorLightBlue,
                          fontSize: 17.0,
                        ),
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

  Future<void> loginUser() async {
     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!
    );
  }
}