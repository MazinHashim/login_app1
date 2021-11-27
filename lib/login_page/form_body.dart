import 'package:flutter/material.dart';
import './form_text_input.dart';

class FormBody extends StatelessWidget {
  const FormBody({
    Key key,
    @required this.animation,
  }) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          loginTextTitle(),
          SizedBox(
            height: 30.0,
          ),
          new FormTextInput(animation: animation),
          SizedBox(
            height: 30.0,
          ),
          forgotPasswordText(),
          SizedBox(
            height: 30.0,
          ),
          loginButtonContainer(),
          SizedBox(
            height: 30.0,
          ),
          createAccountText(),
        ],
      ),
    );
  }

  Center createAccountText() {
    return Center(
            child: Text(
          "Create Account ?",
          style: TextStyle(fontFamily: "SpicyRice", color: Color.fromRGBO(196, 185, 198, 1)),
        ));
  }

  FadeTransition loginButtonContainer() {
    return FadeTransition(
            opacity: animation,
            child: Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 60.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                      offset: Offset(0.0, 10.0)
                    )
                  ],
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(50, 40, 80, 1),
                    Color.fromRGBO(50, 40, 80, 0.5)
                  ])),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ));
  }

  FadeTransition forgotPasswordText() {
    return FadeTransition(
            opacity: animation,
            child: Center(
                child: Text(
              "Forgot password ?",
              style: TextStyle(color: Color.fromRGBO(196, 185, 198, 1)),
            )));
  }

  FadeTransition loginTextTitle() {
    return FadeTransition(
            opacity: animation,
            child: Text(
              "Login",
              style: TextStyle(
                  color: Color.fromRGBO(50, 40, 80, 1.0),
                  fontSize: 30.0,
                  fontFamily: "SpicyRice"),
            ));
  }
}

