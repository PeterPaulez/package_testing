import 'package:custom_route_transition/helpers/transition.dart';
import 'package:flutter/material.dart';

import 'package:custom_route_transition/pages/dos.dart';

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
              animation: AnimationType.slideTop,
              duration: Duration(milliseconds: 1000),
              replacement: true,
              curveType: CurveType.bounce,
            );
          },
          color: Colors.white,
          child: Text('Go to Page Dos'),
        ),
      ),
    );
  }
}
