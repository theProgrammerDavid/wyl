import 'package:flutter/material.dart';

class ListingWidget extends StatelessWidget {

  String title;
  String location;

  ListingWidget({this.location, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage("https://www.ten-x.com/company/blog/wp-content/uploads/sites/4/2018/01/the-real-case-for-big-houses.jpeg")
                    )
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child:Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(height: 0.1, width: 0.1),
                          Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on, color: Colors.grey[500]),
                          Text(location, style: TextStyle(color: Colors.grey[500], fontSize: 15)),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.red[500]),
                          Icon(Icons.star, color: Colors.red[500]),
                          Icon(Icons.star, color: Colors.red[500]),
                          Icon(Icons.star, color: Colors.red[500]),
                          Icon(Icons.star_border, color: Colors.red[500]),
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up, color: Colors.black),
                          SizedBox(width: 4),
                          Text('Recommended 100%', style: TextStyle(color: Colors.black, fontSize: 15,))
                        ]
                      ),

                      Row(
                        children: <Widget>[
                          Icon(Icons.rate_review, color: Colors.black),
                          SizedBox(width: 4),
                          Text('Reviews 3', style: TextStyle(color: Colors.black, fontSize: 15,))
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(height: 0.1, width: 0.1),
                          FlatButton(
                            color: Colors.red[500],
                            child: Text('VIEW NOW', style: TextStyle(color: Colors.white)),
                            onPressed: (){},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              )
            ],
          ),
          Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
        ],
        
      ),
      
    );
  }
}