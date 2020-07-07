import 'package:flutter/cupertino.dart';

class Product {
    String productName;
    double productPrice;
    var productSize = [];
    var productImages = {};
    String productDescription;
    Product({
      @required this.productName,
      @required this.productPrice,
      @required this.productDescription,
      @required this.productImages,
      @required this.productSize
    });
}