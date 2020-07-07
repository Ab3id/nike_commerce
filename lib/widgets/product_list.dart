import 'package:flutter/material.dart';
import '../modal/product.dart';
class ProductList extends StatelessWidget {
  final List<Product> shoes = [
    Product(productDescription: "tunatest Mitambo",
        productImages: {"bg" : "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/ph8wkuoebwuhawwi0j63/air-zoom-structure-22-running-shoe-1KqM5f.jpg",
                        "others" : []},
        productName: "Ab3ids"
        ,productPrice: 220,
        productSize: [40,41,42,45,47]
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: shoes.map((shoe){
              return  Container(
                margin  : EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: <Widget>[
                      Card(
                        semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(shoe.productImages["bg"],
                            fit: BoxFit.cover ,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(padding: EdgeInsets.only(bottom: 2,left: 10,right: 10),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: Column(
                            children: <Widget>[
                            Text(shoe.productName,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          )),
                              SizedBox(
                                height: 5,
                              ),
                              Text('\$${shoe.productPrice.toString()}',style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                              ),)
                            ],
                          ),
                        ),),
                    ),
                  ],
                ),
              );
          }).toList(),
        ),
    );
  }
}
