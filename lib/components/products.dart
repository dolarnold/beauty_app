import 'package:flutter/material.dart';

//my own imports
//import 'package:mremboco/components/horizontal_listview.dart';
//import 'package:mremboco/components/products.dart.';
import 'package:mremboco/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Fresh braids",
      "picture": "images/products/braids5.jpg",
      "old_price": '1230',
      "price": " 1000",
    },
    {
      "name": "Fish braids",
      "picture": "images/products/braids45.jpg",
      "old_price": '2000',
      "price": "1500",
    },
    {
      "name": "Dutch braids",
      "picture": "images/products/braids 4.jpg",
      "old_price": 'ksh4600',
      "price": "3800",
    },
    {
      "name": "Afro",
      "picture": "images/products/afro1.jpg",
      "old_price": '2000',
      "price": "1500",
    },
    {
      "name": "Flat top",
      "picture": "images/products/afro3.jpg",
      "old_price": '2000',
      "price": "1500",
    },
    {
      "name": "short natural curl",
      "picture": "images/products/afro97.jpg",
      "old_price": '2000',
      "price": "1500",
    },
    {
      "name": "fishtails",
      "picture": "images/products/braids5.jpg",
      "old_price": '2000',
      "price": "1500",
    },
    {
      "name": "Rope Twisted",
      "picture": "images/products/braids45.jpg",
      "old_price": '2000',
      "price": "1500",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  // passing values of the products to product details page
                  product_details_name:prod_name,
                  product_details_new_price: prod_price,
                  product_details_old_price: prod_old_price,
                  product_details_picture: prod_picture,
                ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child:new Row(children: <Widget>[
                    Expanded(
                      child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                    ),
                    new Text ("\$${prod_price}",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold) ,),
                  ],)
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
