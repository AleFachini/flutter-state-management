import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/screens/navigation/navone.dart';
import 'package:flutter_getx_showcase/screens/navigation/navtwo.dart';
import 'package:get/get.dart';

class Navthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/nav3sub1':
            print(settings.name);
            builder = (BuildContext _) => Threesubone();
            break;
          case '/':
            print(settings.name);
            builder = (BuildContext _) => Mainnavthree();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
    // return WillPopScope(
    //   onWillPop: () async {
    //     Navigator.of(context).pop();
    //     return true;
    //   },
    //   child: Container(
    //     color: Colors.black12,
    //   ),
    // );
  }
}

class Mainnavthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/nav3sub1');
              },
              child: Text('Three Sub 1'),
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.yellowAccent,
              onPressed: () {},
              child: Text('Three Sub 2'),
            ),
          ),
        ],
      ),
    );
  }
}

class Threesubone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Container(
        color: Colors.pink[100],
      ),
    );
  }
}
