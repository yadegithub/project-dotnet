import 'package:flutter/material.dart';
import 'package:project_pfe/constants/constants.dart';
import 'package:project_pfe/models/product_model.dart';
import 'package:project_pfe/pages/details/components/custom_appbar.dart';
import 'package:project_pfe/pages/details/components/product_image.dart';

import 'components/product_details.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({Key? key, required this.product}) : super(key: key);

  //final ProductModel product;
  
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ProductImage(imageUrl: product.imageUrl,),
            ProductDetails(productModel: product,),
            CustomAppBar(),
          ],

          
        ),
        
      ),
    );
  }
}
