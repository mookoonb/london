import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override

  Widget homeItemWidget (BuildContext context ,int index) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text('第$index行'),
          ],
        ),
    );
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: homeItemWidget
    );
  }
}