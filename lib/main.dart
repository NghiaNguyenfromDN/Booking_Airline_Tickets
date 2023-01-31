import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/infomation/airplane_go.dart';
import 'package:flutter_application_2/infomation/airplane_tail_info.dart';
import 'package:flutter_application_2/infomation/provider_main.dart';
import 'package:flutter_application_2/infomation/Contact_page.dart';
import 'package:flutter_application_2/infomation/ticket_detail_info.dart';
import 'package:flutter_application_2/infomation/ticket_detail_info_back.dart';
import 'package:flutter_application_2/infomation/user_info.dart';
import 'package:flutter_application_2/screens/bottom_bar.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/register_screen.dart';
import 'package:flutter_application_2/utils/app_info._list.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_application_2/utils/app_styles.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: const MyApp(),
    create: (_) => MovieProvider(),
  ));
  /* WidgetsFlutterBinding.ensureInitialized();  Bản fix
  await Firebase.initializeApp();
  runApp(const MyApp()); */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Firebase App
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
