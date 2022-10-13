import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/forgetPassword.dart';
import 'package:happyendingapp/screens/otp_page.dart';
import 'package:happyendingapp/screens/singUp.dart';

class SignIn extends StatefulWidget {
  @override
  SignInState createState() => SignInState();
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/iron_man.jpg'),
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
              padding: EdgeInsets.only(top: 35),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "SKIP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(top: 20, right: 20, left: 40, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: 50, right: 20, left: 230, bottom: 10),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Email or Mobile number",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter the password",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(left: 193),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPage()),
                          (route) => false);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    splashColor: Colors.white,
                    color: Colors.redAccent,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => OTPPage()),
                          (route) => false);
                    },
                    child: Text(
                      "CONTINUE TO LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Not Registered?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()),
                                (route) => false);
                          },
                          child: Text(
                            "REGISTER NOW",
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "____________  OR  ____________",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          'images/google.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                          height: 60,
                          width: 50,
                          child: Image.asset(
                            'images/facebook.png',
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
