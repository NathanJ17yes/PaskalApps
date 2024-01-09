import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: <Widget>[
        const SizedBox(height: 120),
        SizedBox(
            width: 145,
            height: 145,
            child: Image.asset("lib/images/Logo_GKI.png")),
        const SizedBox(
          height: 20,
        ),
        const Text('GKI PASIRKALIKI',
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 34, 167, 160),
            )),
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 35)),
            Text("Email :",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 0, 0, 0))),
          ],
        ),
        const Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 25)),
            SizedBox(
                width: 440,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 30),
        const Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 35)),
            Text(
              'Password : ',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ],
        ),
        const Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 25)),
            SizedBox(
              width: 440,
              height: 40,
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        //ElevatedButton()
      ])),
    );
  }
}
