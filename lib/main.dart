import 'package:custom_route_transition/pages/dos.dart';
import 'package:custom_route_transition/pages/uno.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'uno',
      routes: {
        'uno': (_) => UnoPage(),
        'dos': (_) => DosPage(),
      },
    );
  }
}
