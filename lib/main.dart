import 'package:flutter/material.dart';
import 'package:solar/constants.dart';
import 'package:solar/login_page.dart';
import 'package:solar/widget/app_layout.dart';
import 'package:solar/widget/secondary_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar tree E14',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Танилцуулга'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      'Танилцуулга',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: const [
                Icon(
                  Icons.electric_bike,
                  size: 100,
                ),
                Text(
                  "Тавтай морил",
                  style: TextStyle(fontSize: FONT_MD),
                ),
              ],
            ),
            SecondaryButton(
                text: "Нэвтрэх",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                }),
          ],
        ),
      ),
    );
  }
}
