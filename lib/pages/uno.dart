import 'package:flutter/material.dart';

import 'package:custom_route_transition/pages/dos.dart';
import 'package:custom_route_transition_peterpaulez/custom_route_transition_peterpaulez.dart';

class UnoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [],
        title: Text('Page Uno'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (_) => DosPage()));
            //Navigator.pushNamed(context, 'dos');
            RouteTransitions(
              context: context,
              child: DosPage(),
              animation: AnimationType.fafeIn,
              duration: Duration(milliseconds: 500),
              replacement: true,
            );
          },
          color: Colors.white,
          child: Text('Go to Page Dos'),
        ),
      ),
    );
  }
}
