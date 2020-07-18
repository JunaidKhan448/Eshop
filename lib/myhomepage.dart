import 'package:flutter/material.dart';
import 'package:prototype_for_customer/components/horizontal_listview.dart';
import 'package:prototype_for_customer/components/products.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:prototype_for_customer/pages/cart.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel= new Container(
      margin: EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30)
      ),
      child: Carousel(
        dotBgColor: Colors.transparent,
        dotSize: 3,
        indicatorBgPadding: 4,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/f1.jpg'),
         // AssetImage('images/f2.jpg'),
         // AssetImage('images/f3.jpg'),
          AssetImage('images/f4.jpg'),
          AssetImage('images/f5.png'),
          AssetImage('images/f6.jpg'),
          AssetImage('images/f7.jpg'),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("E Shop"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,
            color: Colors.white,
          ),
            onPressed: null
            ,),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
            },
            icon: Icon(
                Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Shahbaz Ahmad"),
              accountEmail: Text("Shahbaz@mnsaviotrs.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.account_circle),
                ),
              ),
            ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title: Text("HomePage"),
               leading: Icon(Icons.home,
                   color: Color(0xffbb00bb)),
             ),
           ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,
                  color: Color(0xffbb00bb),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,
                color: Color(0xffbb00bb),),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(Icons.shopping_cart
                    ,color: Color(0xffbb00bb)),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,
                    color: Color(0xffbb00bb)),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help),
              ),
            ),

          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          //image carousal starts here
        image_carousel,
          //padding widget starts here
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Cateogaries",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          //GridView starts here
          HorizontalList(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Recent Products",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),


          //GridView starts here
          Flexible(child: Products())


        ],
      ),

    );
  }
}
