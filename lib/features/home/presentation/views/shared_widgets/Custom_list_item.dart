import 'package:flutter/material.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),

              image: const DecorationImage(
                  image: AssetImage('lib/assets/images/test_list_Item.png'),
                  fit: BoxFit.fill
              )
          ),
        ),
      ),
    );
  }
}
