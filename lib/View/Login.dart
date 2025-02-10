import 'package:easy_trip_admin/controller/login_controller.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login_background.jpg"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            TextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                hintText: "Enter Passwords",
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).height) * 0.05,
                child: ElevatedButton(
                    onPressed: () async {
                      final lc = Login_Controller();
                      if (await lc.signIn(email.text.trim().toString(),
                          pass.text.trim().toString())) {
                        Navigator.pushReplacementNamed(context, "/home");
                      } else {
                        print("Not Navigate");
                      }
                    },
                    child: Text("Login"))),
          ],
        ),
      ),
    ));
  }
}
