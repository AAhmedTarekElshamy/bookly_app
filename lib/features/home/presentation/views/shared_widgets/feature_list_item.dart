import 'package:flutter/material.dart';
class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, this.aspectRatioNumber, required this.imgUrl});
  final double? aspectRatioNumber;
  final String imgUrl;
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

              image:  DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.fill
              )
          ),
        ),
      ),
    );
  }
}
