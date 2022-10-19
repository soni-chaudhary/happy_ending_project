import 'package:flutter/material.dart';
import 'package:happyendingapp/home/firstScreen.dart';

import 'package:sms_autofill/sms_autofill.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  String codeValue = "";
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
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Enter OTP to Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04),
                ),
                SizedBox(height: width * 0.04),
                PinFieldAutoFill(
                  decoration: const UnderlineDecoration(
                    textStyle: TextStyle(fontSize: 20, color: Colors.white),
                    colorBuilder: FixedColorBuilder(Colors.white),
                  ),
                  currentCode: codeValue,
                  codeLength: 4,
                  onCodeChanged: (code) {
                    print("onCodeChanged ${code}");
                    setState(() {
                      codeValue = code.toString();
                    });
                  },
                  onCodeSubmitted: (val) {
                    print("onCodeChanged ${val}");
                  },
                ),
                SizedBox(height: width * 0.08),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Auto-filling OTP 00:00"),
                      Text(
                        "Resend OTP ",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: width * 0.08),
                Container(
                  height: 50,
                  width: width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => FirstScreen())));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
