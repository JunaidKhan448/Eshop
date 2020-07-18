import 'package:flutter/material.dart';

class Cart_products extends StatelessWidget {
  //============================= Data Source for List view.builder ================================
  var Products_on_the_cart = [
    {
      "name": "Ladies Lawn Suit",
      "picture": "images/dresses/dress1.png",
      "size": "M",
      "color": "Red",
      "price": 1300,
      "quantity": 1
    },
    {
      "name": "Shalwar Kamez",
      "picture": "images/formals/formal3.jpg",
      "size": "L",
      "color": "Blue",
      "price": 1550,
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_product_color: Products_on_the_cart[index]["color"],
            cart_product_name: Products_on_the_cart[index]["name"],
            cart_product_picture: Products_on_the_cart[index]["picture"],
            cart_product_price: Products_on_the_cart[index]["price"],
            cart_product_qty: Products_on_the_cart[index]["quantity"],
            cart_product_size: Products_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_price;
  final cart_product_picture;
  final cart_product_color;
  final cart_product_size;
  final cart_product_qty;

  Single_cart_product(
      {this.cart_product_color,
      this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_qty,
      this.cart_product_size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          //=====================Leading Section=====================
          leading: Image.asset(
            cart_product_picture,
            width: 50,
          ),
          //====================Title Section=========================
          title: Text("$cart_product_name"),
          //====================Subtitle Section======================
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Size :"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "$cart_product_size",
                      style: TextStyle(color: Color(0xffbb00bb)),
                    ),
                  ),

                  //================This Section is for product color==============
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Color: "),
                  ),
                  Text(
                    "$cart_product_color",
                    style: TextStyle(color: Color(0xffbb00bb)),
                  )
                ],
              ),

              //=============== This section is for Product Price=============
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Rs $cart_product_price",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffbb00bb)),
                    ),
                  ],
                ),
              )

            ],
          ),
         /* trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_drop_up),
              ),
              Text("ajd"),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_drop_up),
              )
            ],
          ),*/
        ),
      ),


    );
  }
}
