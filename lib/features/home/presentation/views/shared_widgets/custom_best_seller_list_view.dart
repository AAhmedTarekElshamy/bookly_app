import 'package:flutter/material.dart';

import 'custom_book_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
        height:  MediaQuery.of(context).size.height*0.40 ,
        child: ListView.builder(
          shrinkWrap: false,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index)=>const CustomBookItem(),
        itemCount: 15,
        ),

    );
  }
}
