import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HOME',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
