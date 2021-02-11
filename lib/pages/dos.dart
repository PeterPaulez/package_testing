import 'package:custom_route_transition/pages/uno.dart';
import 'package:flutter/material.dart';
import 'package:custom_route_transition_peterpaulez/custom_route_transition_peterpaulez.dart';

class DosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        actions: [],
        title: Text('Page Dos'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (_) => DosPage()));
            //Navigator.pushNamed(context, 'dos');
            RouteTransitions(
              context: context,
              child: UnoPage(),
              animation: AnimationType.fadeIn,
              duration: Duration(milliseconds: 200),
              replacement: true,
            );
          },
          color: Colors.white,
          child: Text('Go to Page Uno'),
        ),
      ),
    );
  }
}
