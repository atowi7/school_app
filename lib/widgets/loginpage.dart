import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _username = TextEditingController();
  final _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  child: Image(
                    image: AssetImage("assets/images/alhuda_icon.jpg"),
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 20),
                ),
                new Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "أسم المستخدم"),
                      controller: _username,
                    ),
                  ),
                ),
                new Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "كلمة السر "),
                      controller: _pass,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_username.text == 'a' && _pass.text == 'b') {
                      Navigator.pushNamed(context, "/home");
                    }
                  },
                  child: Text('تسجيل الدخول'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      50,
                      50,
                    ),
                  ),
                ),
              ]),
        ),
      )),
    );
  }
}
