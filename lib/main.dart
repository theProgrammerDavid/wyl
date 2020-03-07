import 'package:better_property/screens/home_screen.dart';
import 'package:better_property/widgets/login_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WYL',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height:130,),
            Container(
              height:50,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.png'))
              )
            ),
            SizedBox(height:20),
            LoginButton(
              func: (){},
              buttonTitle: "LOGIN",
              color: Colors.red[500],
              textColor: Colors.white,
              borderColor: Colors.red[500],
              i: false
            ),
            LoginButton(
              func: (){},
              buttonTitle: "SIGN UP",
              color: Colors.white,
              textColor: Colors.red[500],
              borderColor: Colors.red[500],
              i: false
            ),
            LoginButton(
              func: (){},
              buttonTitle: "SIGN IN WITH APPLE",
              color: Colors.white,
              textColor: Colors.black,
              i: true,
              imgPath: "assets/apple_logo.png",
              borderColor: Colors.black,
            ),
            LoginButton(
              func: (){},
              buttonTitle: "SIGN IN WITH FACEBOOK",
              color: Colors.blue[900],
              textColor: Colors.white,
              i: true,
              imgPath: "assets/facebook.png",
              borderColor: Colors.black,
            ),
            FlatButton(
              child: Text(
                'SKIP>>',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.red[500]
                ),
              ),
              onPressed: () {},
            ),
          ]
          ),
      ),
      );
  }
}