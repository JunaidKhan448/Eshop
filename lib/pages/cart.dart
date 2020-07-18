import 'package:flutter/material.dart';
import 'package:prototype_for_customer/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("My Cart"),
      ),
      bottomNavigationBar: Container(
        color: Colors.white70,
       // height: 30,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("Rs 250"),
              ),
            ),  
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                color: Color(0xffBB00BB),
                child: Text("Check Out"),
              ),
            )
          ],
        ),
      ),
      body: Cart_products(),
    );
  }
}
