import 'package:flutter/material.dart';

class FormTextInput extends StatelessWidget {
  const FormTextInput({
    Key key,
    @required this.animation,
  }) : super(key: key);

  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: animation,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(196, 185, 198, 0.5),
                      blurRadius: 20.0,
                      offset: Offset(0, 10.0))
                ]),
            child: Column(
              children: <Widget>[
                customTextField("Username", false),
                customTextField("Password", true),
              ],
            )));
  }

  Container customTextField(String hint, bool isLast) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: !isLast
          ? BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200])))
          : null,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
