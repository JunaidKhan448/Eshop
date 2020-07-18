import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototype_for_customer/components/products.dart';
import 'package:prototype_for_customer/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios),
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              child: GridTile(
                child: Container(
                  child: Image.asset(
                    widget.product_detail_picture,
                    fit: BoxFit.fill,
                  ),
                ),
                footer: Container(
                  color: Colors.white70,
                  height: 40,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "${widget.product_detail_name}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "RS ${widget.product_detail_old_price}",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                              Text(
                                "RS ${widget.product_detail_new_price}",
                                style: TextStyle(
                                    color: Color(0xffBB00BB),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Size"),
                                content: Text("Choose the Size"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("Size"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Color"),
                                content: Text("Choose Color"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("Color"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Quantity"),
                                content: Text("Choose Quantity"),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text("close"),
                                  )
                                ],
                              );
                            });
                      },
                      child: Row(
                        children: <Widget>[
                          Text("Quantity"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      // decoration: BoxDecoration(),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      color: Color(0xffBB00BB),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    // flex: 1,
                    child: Icon(
                  Icons.add_shopping_cart,
                  color: Color(0xffBB00BB),
                )),
                Expanded(
                    //flex: 1,
                    child: Icon(
                  Icons.favorite_border,
                  color: Color(0xffBB00BB),
                ))
              ],
            ),
            //Product name
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
              child: Row(
                children: <Widget>[
                Text("Product name:  ",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
                  Text(widget.product_detail_name,
                 )
                ],
              ),
            ),
            //Product Brand
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 2, 0, 0),
              child: Row(
                children: <Widget>[
                  Text("Product Brand:  ",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  Text("Brand X")
                ],
              ),
            ),
            //Product Condition
            Padding(
              padding: const EdgeInsets.fromLTRB(12,2,0,0),
              child: Row(
                children: <Widget>[
                  Text("Product condition:  ",
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  Text("New")
                ],
              ),
            ),
           Divider(
             color: Color(0xffbb00bb),
           ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: ListTile(
                title: Text(
                  "Product Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),

              ),
            ),
          Divider(color: Color(0xffbb00bb),),
          Padding(
            padding: const EdgeInsets.fromLTRB(14,15,0,5),
            child: Text("Similar Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),

          //Grid Similar Products
          Container(
              height: 350,
              child: Similar_products()),
          //  Divider(color: Color(0xffbb00bb),)
          ],
        ),
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [

    {
      "name": "Cottom Trouser",
      "picture": "images/informals/informal3.jpg",
      "oldprice": 1000,
      "price": 800
    },
    {
      "name": "Denim Black Pant",
      "picture": "images/pants/pant3.jpg",
      "oldprice": 3500,
      "price": 2500
    },
    {
      "name": "Shirt and Trouser pair",
      "picture": "images/informals/informal5.jpg",
      "oldprice": 1300,
      "price": 1200
    },
    {
      "name": "Blue Jeans",
      "picture": "images/pants/pant1.jpg",
      "oldprice": 1200,
      "price": 1000
    },
    {
      "name": "Blue Pant Coat",
      "picture": "images/formals/formal4.jpg",
      "oldprice": 9000,
      "price": 5000
    },
    {
      "name": "Maroon Pant Coat",
      "picture": "images/formals/formal6.jpg",
      "oldprice": 1000,
      "price": 7000
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['oldprice'],
          prod_price: product_list[index]['price'],
        );
      },
      itemCount: product_list.length,
    );
  }
}

