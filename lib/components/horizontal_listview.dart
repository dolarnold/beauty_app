import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/afro.jpg',
            image_caption: 'afro',

          ),

          Category(
            image_location: 'images/cats/bangs.jpg',
            image_caption: 'bangs',

          ),

          Category(
            image_location: 'images/cats/beehives.jpg',
            image_caption: 'beehives',

          ),

          Category(
            image_location: 'images/cats/bobcuts.jpg',
            image_caption: 'bobcuts',

          ),

          Category(
            image_location: 'images/cats/braids3.jpg',
            image_caption: 'braids',

          ),

          Category(
            image_location: 'images/cats/buns.jpg',
            image_caption: 'buns',

          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child:Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
