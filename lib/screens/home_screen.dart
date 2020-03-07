import 'package:better_property/widgets/listing_widget.dart';
import 'package:better_property/widgets/login_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        centerTitle: true,
        title: Text('HOME', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Container(
            child: Icon(Icons.menu),
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10),
            Center(child: Text('LANDLORD, PROPERTY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),

            Center(child: Text('MANAGER AND BUILDING REVIEWS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),

            SizedBox(height: 10),
          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          ListingWidget(location: 'Your Mom', title: 'Her Pussy'),
          SizedBox(height: 20,),

          LoginButton(buttonTitle: 'VIEW ALL', color: Colors.orange[900], func: (){}, textColor: Colors.white, i: false, borderColor: Colors.orange[900])
          ],
        ),
      )
    );
  }
}