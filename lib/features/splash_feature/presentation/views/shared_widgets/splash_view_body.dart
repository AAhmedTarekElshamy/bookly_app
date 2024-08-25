import 'package:bookly_app/core/utility/app_router.dart';
import 'package:bookly_app/features/splash_feature/presentation/views/shared_widgets/sliding_text.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utility/assets.dart';
import '../../../../home/presentation/views/home_view.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();
    _initSlidingAnimation();
    _navigateToHomeView();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidingAnimation: _slidingAnimation),
      ],
    );
  }

  void _initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 7),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void _navigateToHomeView() {
    Future.delayed(const Duration(seconds: 5), () {
       GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}






