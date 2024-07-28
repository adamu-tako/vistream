import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingSlides extends StatefulWidget {
  const OnboardingSlides({super.key});

  @override
  State<OnboardingSlides> createState() => _OnboardingSlidesState();
}

class _OnboardingSlidesState extends State<OnboardingSlides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Onboarding(swipeableBody: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Unlimited viewing of movies, TV shows and more.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
                maxLines: null,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Unlimited viewing of movies, TV shows and more. 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
                maxLines: null,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Unlimited viewing of movies, TV shows and more. 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
                maxLines: null,
              ),
            ),
          )
        ], startIndex: 0, animationInMilliseconds: 50),
      ),
    );
  }
}
