import 'package:flutter/material.dart';

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
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Mrembo Beauty App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
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
        )
      ]),
    );
  }
}
