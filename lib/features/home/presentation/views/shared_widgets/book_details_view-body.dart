import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Center(

             child: SizedBox(
               height: MediaQuery.of(context).size.height/3,
               child: AspectRatio(
                 aspectRatio: 2.7/4,
                 child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     image: DecorationImage(
                        image: AssetImage('lib/assets/images/test_list_Item.png',),
                       fit: BoxFit.fill,

                     )
                   )
                 ),
               ),
             ),
          )
        ],
      ),
    );
  }
}
