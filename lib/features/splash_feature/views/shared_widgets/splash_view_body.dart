import 'package:flutter/cupertino.dart';

import '../../../../core/utility/assets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo,),
          const Text('read free books 😍',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
