import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'custom_snack_bar.dart';
Future<void> openUrl(context,String uri) async {
  final Uri url = Uri.parse(uri);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication); // Launch in a web browser
  } else {
   // throw Exception('Could not launch $uri');
    customSnackBar(context,'${throw Exception('Could not launch $uri')}');
  }
}
