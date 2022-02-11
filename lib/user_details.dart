// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// import 'package:get/get.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  // FirebaseFirestore db = FirebaseFirestore.getInstance();
  String name = '';
  String mobile = '';
  String blood_group = '';
  String address = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: const Text("Name"),
              subtitle: TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.mobile_friendly),
              title: const Text("Mobile"),
              subtitle: TextField(
                onChanged: (value) {
                  setState(() {
                    mobile = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.bloodtype_outlined),
              title: const Text("Blood Group"),
              subtitle: TextField(
                onChanged: (value) {
                  setState(() {
                    blood_group = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: const Text("Address"),
              subtitle: TextField(
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.navigate_next),
                title: Text('Done'),
                onTap: () {})
          ],
          //   ),
          // ],
        ),
      ),
    );
  }
}
