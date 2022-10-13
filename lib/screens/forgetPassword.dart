import 'package:flutter/material.dart';
import 'package:happyendingapp/screens/sign_in.dart';

class ForgotPage extends StatefulWidget {
  @override
  ForgotPageState createState() => ForgotPageState();
}

class ForgotPageState extends State<ForgotPage> {
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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                        (route) => false);
                  },
                  icon: Icon(Icons.arrow_back_outlined));
            }),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 40, right: 20, left: 40, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: 50, right: 20, left: 20, bottom: 10),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Forgot Password",
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    child: MaterialButton(
                      splashColor: Colors.white,
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        "CONTINUE TO LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
