import 'package:flutter/material.dart';
import './widgets/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat"
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 23.0,left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu), onPressed: (){

                  },
                  color: Colors.black,
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.search),color: Colors.black, onPressed: (){

                        }),
                        IconButton(icon: Icon(Icons.settings),color: Colors.black, onPressed: (){

                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 23.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Shoes",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                  Container(
                    width: 165,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Sort By"),
                        IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: (){

                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
            ProductList()
          ],
        ),
      ),
    );
  }
}
