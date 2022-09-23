import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/signIn.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController emailID = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/iron_man.jpg'),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.red.withOpacity(0.6), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Builder(builder: ((context) {
            return IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                      (route) => false);
                },
                icon: Icon(Icons.arrow_back_outlined));
          })),
          title: Text("Looks like are new"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
            child: Column(
              children: [
                TextWidgets(
                  text: "First Name",
                  textController: firstName,
                ),
                TextWidgets(
                  text: "last Name",
                  textController: lastName,
                ),
                TextWidgets(
                  text: "Email ID",
                  textController: emailID,
                ),
                TextWidgets(
                  text: "Mobile Number",
                  textController: mobileNo,
                ),
                TextWidgets(
                  text: "Password",
                  textController: password,
                ),
                TextWidgets(
                  text: "Gender",
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 330,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already Registered?",
                        style: TextStyle(color: Colors.white),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                              (route) => false);
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.redAccent,
                              decoration: TextDecoration.underline),
                        ),
                      )
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

class TextWidgets extends StatelessWidget {
  final text;
  final textController;
  TextWidgets({required this.text, this.textController});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: text,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ));
  }
}
