import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/forgetPassword.dart';
import 'package:happyendingapp/screens/otp_page.dart';

import 'package:happyendingapp/screens/sign_up.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/iron_man.jpg'),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Colors.red.withOpacity(0.6), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: <Widget>[
              Container(
                padding: EdgeInsets.only(top: width * 0.04),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "SKIP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Email or Mobile number",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter the password",
                    labelStyle: const TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.04),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPage()),
                        (route) => false);
                  },
                  child: const Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: width * 0.04),
                Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) => OTPPage())));
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.redAccent)),
                    child: const Text(
                      "CONTINUE TO LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: width * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not Registered?",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                            (route) => false);
                      },
                      child: const Text(
                        "REGISTER NOW",
                        style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: width * 0.06),
                const Text(
                  "------------ OR  ------------",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: width * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        'images/google.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * 0.08),
                    SizedBox(
                        height: 60,
                        width: 50,
                        child: Image.asset(
                          'images/facebook.png',
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                SizedBox(height: width * 0.06),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
