import 'package:blood_donation/selectionscreen.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final _controller = TextEditingController();
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[50],
        // ignore: unnecessary_new
        body: new Stack(
          children: [
            // Image.asset('assets/image/LoginImage.png', fit: BoxFit.fill),
            Center(
              child: ListView(children: <Widget>[
                Image.asset(
                  "assets/image/giphy.gif",
                  // fit: BoxFit.fill,
                  // height: double.infinity,
                  // width: double.infinity,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: const Text("User Name"),
                  subtitle: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      setState(() {
                        username = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.password),
                  title: Text('Password'),
                  subtitle: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {
                        password = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.login),
                    title: Text('Login/Register'),
                    onTap: () {
                      // if (username == 'admin' && password == 'admin') {
                      if (username == null || username == '') {
                        Get.dialog(AlertDialog(
                          title: Text('Error'),
                          content: Text('Please Enter User Name'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Get.back();
                              },
                            )
                          ],
                        ));
                        return;
                      }
                      if (password == null || password == '') {
                        Get.dialog(AlertDialog(
                          title: Text('Error'),
                          content: Text('Please Enter password'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Get.back();
                              },
                            )
                          ],
                        ));
                        return;
                      }
                      auth
                          .createUserWithEmailAndPassword(
                              email: username, password: password)
                          .then((value) {
                        print(value);
                        if (value.user != null) {
                          Get.offAllNamed('/home');
                        }
                      }).catchError((e) {
                        print(e);
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Selectionscreen(),
                        ),
                      );
                    }
                    // else {
                    //   print('Invalid Credentials');
                    // }

                    ),
              ]),
            ),
          ],
        ));
  }
}
