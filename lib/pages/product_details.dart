import 'package:flutter/material.dart';
import 'package:mremboco/main.dart';


class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomePage()));},
            child:Text("Mrembo Beauty App")),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),
      body: new ListView(children: <Widget>[
        new Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_details_picture),
            ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "\$${widget.product_details_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Expanded(
                      child: new Text(
                        "\$${widget.product_details_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // ============THE FIRST BUTTON==================
        Row(
          children: <Widget>[
            //===========SIZE BUTTONS==================
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title:new Text("Size"),
                      content: new Text("choose the Size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),

            // ======Size buttons======
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title:new Text("Color"),
                          content: new Text("choose the colour"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Color")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
            // =================
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title:new Text("Qty"),
                          content: new Text("choose the Quantity"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),


              ),
            ),
          ],
        ),
        // ============THE Second BUTTON==================
        Row(
          children: <Widget>[

            // ======Size buttons======

            // =================
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("buy Now")),
                  ],
                ),

              ),
            ),
            new IconButton(icon:Icon(Icons.shopping_cart), color: Colors.red,onPressed: (){}),
            new IconButton(icon:Icon(Icons.favorite_border),color: Colors.red, onPressed: (){}),
          ],
        ),
        Divider(),
        new ListTile(
          title: new Text("Product details"),
          subtitle: new Text("the French braid is a classic for a reason. You can wear this versatile braid for a casual brunch, the gym or the office. Keep it super smooth for a more professional look, or pull a few face-framing pieces out for a soft and romantic vibe. You can also team it with a fishtail braid or half-up, half-down style, and French braids are also a popular hairstyle for wedding guests. Whatever the occasion, a French braid is a perfect choice."),
        ),
        
        Divider(),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text("Product name",style:TextStyle(color:Colors.grey),),),
            Padding(padding:EdgeInsets.all(5.0),
            child: new Text(widget.product_details_name),)
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand",style:TextStyle(color:Colors.grey),),),
            Padding(padding:EdgeInsets.all(5.0),

              //Remember to create product band
              child: new Text("brand-x"),)
          ],
        ),
        Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product condition",style:TextStyle(color:Colors.grey),),),
            Padding(padding:EdgeInsets.all(5.0),
              // remember the condition product
              child: new Text(""),),
            Padding(padding:EdgeInsets.all(5.0),
              child: new Text("NEW"),),
          ],
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
        child: Text("Similar products"),
        ),
        // SIMILAR PRODUCT SECTIOn
        Container(
          height: 360.0,
          child: Similar_products(),
        ),
      ]),
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

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class  Similar_single_prod extends StatelessWidget {
final prod_name;
final prod_picture;
final prod_old_price;
final prod_price;

Similar_single_prod({
  this.prod_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price,
});

@override
Widget build(BuildContext context) {
  return Card(
    child: Hero(
      tag: new Text("hero 1"),
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


