import 'package:flutter/material.dart';
import './login_page/drawed_background.dart';
import './login_page/form_body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        lowerBound: 0.2,
        duration: const Duration(milliseconds: 1500), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imgSize = MediaQuery.of(context).size.height * 0.4;

    return Scaffold(
        body: Column(
      children: <Widget>[
        new DrawedBackground(imgSize: imgSize, width: width, animation: animation),
        new FormBody(animation: animation)
      ],
    ));
  }
}
