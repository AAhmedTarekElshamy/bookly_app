import 'package:flutter/material.dart';
class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, this.aspectRatioNumber});
  final double? aspectRatioNumber;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height:MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: aspectRatioNumber ?? 2.7/4,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),

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
