import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key, this.aspectRatioNumber, required this.imgUrl});
  final double? aspectRatioNumber;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     // height:MediaQuery.of(context).size.height*0.3,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AspectRatio(
            aspectRatio: aspectRatioNumber ?? 2.7/4,
            child:CachedNetworkImage(
              imageUrl:imgUrl,
              fit: BoxFit.fill,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
// Container(
// margin: const EdgeInsets.symmetric(horizontal: 8),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(8),
//
// image:  DecorationImage(
// image:  NetworkImage(imgUrl),
// fit: BoxFit.fill
// )
// ),
// )