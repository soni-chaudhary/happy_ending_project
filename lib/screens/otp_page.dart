import 'package:flutter/material.dart';
import 'package:happyendingapp/home/firstScreen.dart';
import 'package:happyendingapp/home/newArrivalPage.dart';
import 'package:happyendingapp/screens/signIn.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OTPPage extends StatefulWidget {
  @override
  OTPPageState createState() => OTPPageState();
}

class OTPPageState extends State<OTPPage> {
  String codeValue = "";
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
          leading: Builder(
            builder: ((context) {
              return IconButton(
                  onPressed: () {
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => NewArrivalPage()),
                    //     (route) => false);
                  },
                  icon: Icon(Icons.arrow_back_outlined));
            }),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Container(
            margin: EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "Enter OTP to Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: PinFieldAutoFill(
                    decoration: UnderlineDecoration(
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
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Auto-filling OTP 00:00"),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Resend OTP ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 1, 146, 108),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  child: MaterialButton(
                    splashColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FirstScreen()));
                    },
                    child: Text(
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
