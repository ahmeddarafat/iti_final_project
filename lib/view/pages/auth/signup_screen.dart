import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../HomeScreen/home_screen.dart';
import 'login_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
                // const SizedBox(height: 25.0,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kPrimaryColorWhite,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0.h,),
                CustomTextField(
                  hintText: "Email",
                  onChanged: (data)=> email = data,
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                CustomTextField(
                  obscureText: true,
                  hintText: "Password",
                  onChanged: (data)=> password = data,
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomButton(text: "Sign Up",
                  onTap: () async{
                   if (formKey.currentState!.validate()) {
                       isLoading = true;
                       setState(() {});
                    try {
                      await registerUser();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const HomeScreen(),));
                      const SnackBar(content: Text('Success',));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        const SnackBar(content: Text('The password provided is too weak.'));

                      } else if (e.code == 'email-already-in-use') {
                        const SnackBar(content: Text('The account already exists for that email.'));
                      }
                    } catch (e) {
                      print(e);
                    }
                       isLoading = false;
                       setState(() {});
                   } else {}
                  },
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already have an account ? ",
                      style: TextStyle(
                        color: kPrimaryColorWhite,
                        fontSize: 17.0.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Text("  Login",
                        style: TextStyle(
                          color: kPrimaryColorLightBlue,
                          fontSize: 17.0.sp,
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

  Future<void> registerUser() async {
     final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}