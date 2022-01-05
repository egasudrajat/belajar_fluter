import 'package:flutter/material.dart';
import 'package:wisata_bandung/Login_template/src/signin.dart';
import 'navigation_and_routing/FirstScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  primarySwatch: Colors.blueGrey, visualDensity: VisualDensity.adaptivePlatformDensity),
      // home: SignInPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInPage(),
        '/secondScreen': (context) => SecondScreen(),
        '/secondScreenWithData': (context) =>
            SecondScreenWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => ReturnDataScreen(),
        '/replacementScreen': (context) => ReplacementScreen(),
        '/anotherScreen': (context) => AnotherScreen(),
      },
    );
  }
}

