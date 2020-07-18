import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           Cateogary(image_location: 'images/cateogary/informal.jpg',
           image_caption: 'Informal',),
          Cateogary(image_location: 'images/cateogary/formal.jpg',
            image_caption: 'Formal',),
          Cateogary(image_location: 'images/cateogary/dress.png',
            image_caption: 'Dress',),
          Cateogary(image_location: 'images/cateogary/pant.png',
            image_caption: 'Pant',),
          Cateogary(image_location: 'images/cateogary/shirt.png',
            image_caption: 'Shirt',)

        ],
      ),
    );
  }
}

class Cateogary extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Cateogary({
    this.image_location,
    this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
       //   color: Colors.green,
         //height: 10,
          width: 90,
          child: ListTile(
            title: Image.asset(image_location),
            subtitle: Align(
                child: Container(
                  alignment: Alignment.topCenter,
                    child: Text(image_caption))),

          ),
        ),
      ),
    );
  }
}

