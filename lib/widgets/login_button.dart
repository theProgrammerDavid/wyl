import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  String buttonTitle;
  Function func;
  Color color;
  Color textColor;
  String imgPath;
  Color borderColor;
  bool i;
  
  LoginButton({this.buttonTitle, this.color, this.textColor, this.imgPath, this.func, this.borderColor, this.i});

  @override
  Widget build(BuildContext build) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        width: 300,
        child: ButtonTheme(
          minWidth: 300.0,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: borderColor)
                ),
              onPressed: () {
                //insert functionality here
                func();
              },

              padding: EdgeInsets.all(15),
              color: color,
              child: i ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(imgPath),
                    padding: EdgeInsets.only(right: 2)
                  ),
                  Text(buttonTitle, style: TextStyle(color: textColor)),
                ],
              ):
              Text(buttonTitle, style: TextStyle(color: textColor)),
            ),
        ));
  }
}