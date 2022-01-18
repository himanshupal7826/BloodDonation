import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'loginScreen.dart';

void main() async {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAZCf_wzFvRVSULtnQeGMGd5XaT0O4Gmco',
          appId: '1:592983901010:android:b039a856cf8e285094f08b',
          projectId: 'blood-donation-8a22d',
          messagingSenderId: '592983901010'));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  ]);

  // Then call runApp() as normal
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Blood Donation'),
        ),
        body: const Center(
          child: Text(
              'Donate your Blood if you Can\n So the One Who need\nShould Be Strong'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text('Sourav Kumar'),
                accountEmail: Text('Sourav@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'S',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                trailing: const Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Profile'),
                trailing: const Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Donate'),
                trailing: const Icon(Icons.donut_large),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: const Text('Logout'),
                trailing: const Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ));
  }
}
