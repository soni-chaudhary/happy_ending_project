import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text("Looks like are new"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                children: [
                  TextWidgets(
                    text: "First Name",
                    textController: firstName,
                  ),
                  SizedBox(height: width * 0.06),
                  TextWidgets(
                    text: "last Name",
                    textController: lastName,
                  ),
                  SizedBox(height: width * 0.06),
                  TextWidgets(
                    text: "Email ID",
                    textController: emailID,
                  ),
                  SizedBox(height: width * 0.06),
                  TextWidgets(
                    text: "Mobile Number",
                    textController: mobileNo,
                  ),
                  SizedBox(height: width * 0.06),
                  TextWidgets(
                    text: "Password",
                    textController: password,
                  ),
                  SizedBox(height: width * 0.06),
                  TextWidgets(
                    text: "Gender",
                  ),
                  SizedBox(height: width * 0.04),
                  Container(
                    height: 50,
                    width: width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.redAccent)),
                      child: const Text(
                        "REGISTER",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: width * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "ALready Registered?",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: width * 0.02),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                              (route) => false);
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.redAccent,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidgets extends StatelessWidget {
  final String text;
  final textController;
  const TextWidgets({super.key, required this.text, this.textController});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
