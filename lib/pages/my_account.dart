import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            //   color: Color(0xffbb00bb),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.deepPurple,
                  Color(0xff9C27B0),
                  Colors.purpleAccent
                ])),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/d9/2a/70/d92a70eca1a618dc47d5d0b2bd2bc100.jpg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Shahbaz Ahmad",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  Text(
                    "Shabaz@mnsaviators.com",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  SizedBox(height: 10),
                  Card(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    clipBehavior: Clip.antiAlias,
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  size: 40.0,
                                  color: Color(0xff9c27b0),
                                ),
                                Text(
                                  "Wishlist",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Color(0xff9C27B0)),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  size: 40.0,
                                  color: Color(0xff9c27b0),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Color(0xff9C27B0)),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.web_asset,
                                  size: 40.0,
                                  color: Color(0xff9c27b0),
                                ),
                                Text(
                                  "Coupons",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Color(0xff9C27B0)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              // alignment: A,
              margin: EdgeInsets.all(8.0),
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "User Information",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5,),
                      Divider(color: Color(0xff7B1FA2),),
//                      Row(
//                        children: <Widget>[
//                          Icon(Icons.local_phone),
//                          Text("+92 3224013568")
//                        ],
//                      )
                    ListTile(
                      leading: Icon(Icons.phone,
                      color: Color(0xff7B1FA2),),
                      title: Text("Telephone number"),
                      subtitle: Text("+92 3224013568"),
                    ),
                      ListTile(
                        leading: Icon(Icons.perm_identity,
                          color: Color(0xff7B1FA2),),
                        title: Text("CNIC number"),
                        subtitle: Text("35202-3881650-3"),
                      ),
                      ListTile(
                        leading: Icon(Icons.home,
                          color: Color(0xff7B1FA2),),
                        title: Text("Address"),
                        subtitle: Text("Block 6, North Nazimabad, Karachi"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
//          Flexible( flex: 3,
//            child: Container(
//              color: Colors.white70,
//            ),
//          ),
        ],
      ),
    );
  }
}
