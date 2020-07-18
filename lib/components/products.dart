import 'package:flutter/material.dart';
import 'package:prototype_for_customer/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Ladies Lawn Suit",
      "picture": "images/dresses/dress1.png",
      "oldprice": 1500,
      "price": 1300
    },
    {
      "name": "Shalwar Kameez",
      "picture": "images/formals/formal3.jpg",
      "oldprice": 1800,
      "price": 1550
    },
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
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['oldprice'],
            prod_price: product_list[index]['price'],
          ),
        );
      },
      itemCount: product_list.length,
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Container (
      child: Card(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    )));
              },
              child: GridTile(
                footer: Container(
                  alignment: Alignment.center,
                  color: Colors.white70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        //  Spacer(),
                        Column(
                          children: <Widget>[
                            Text(
                              "Rs $prod_price",
                              style: TextStyle(
                                  color: Color(0xffBB00BB),
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "Rs $prod_old_price",
                              style: TextStyle(
                                  color: Colors.black45,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
 }
