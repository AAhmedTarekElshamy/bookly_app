import 'package:bookly_app/features/splash_feature/presentation/views/shared_widgets/sliding_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utility/assets.dart';
import '../../../../home/presentation/views/home_view.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    initSlidingAnimation(animationController: animationController,slidingAnimation: slidingAnimation);
    NavigateToHomeView();


    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        SlidingText(slidingAnimation: slidingAnimation,),
      ],
    );
  }
  void initSlidingAnimation({required AnimationController animationController,required Animation slidingAnimation} ){
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 7), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });

  }

  void NavigateToHomeView(){
    Future.delayed( Duration(milliseconds: 250),(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return HomeView();
      }));
    });
  }




}

