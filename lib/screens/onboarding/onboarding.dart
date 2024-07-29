import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:vistream/screens/components/primary_button.dart';
import 'package:vistream/screens/components/sec_button.dart';
import 'package:vistream/screens/components/swipeable_card.dart';

class OnboardingSlides extends StatefulWidget {
  const OnboardingSlides({super.key});

  @override
  State<OnboardingSlides> createState() => _OnboardingSlidesState();
}

class _OnboardingSlidesState extends State<OnboardingSlides> {
  void handleButtonPress() {
    // ignore: avoid_print
    print('Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Onboarding(
          swipeableBody: const [
            SwipeableCard(
                title:
                    'Watch your favourite movies and TV Shows anywhere you go.',
                subTitle:
                    'VOD stands for video on demand, and refers to a distribution platform.',
                image: 'assets/images/one.png'),
            SwipeableCard(
                title:
                    'Watch your favourite movies and TV Shows anywhere you go.',
                subTitle:
                    'VOD stands for video on demand, and refers to a distribution platform.',
                image: 'assets/images/two.png'),
            SwipeableCard(
                title:
                    'Watch your favourite movies and TV Shows anywhere you go.',
                subTitle:
                    'VOD stands for video on demand, and refers to a distribution platform.',
                image: 'assets/images/three.png'),
          ],
          startIndex: 0,
          animationInMilliseconds: 50,
          buildFooter: (context, netDragDistance, pagesLength, currentIndex,
              setIndex, slideDirection) {
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 0.0, 20.0, 50.0),
                    child: Indicator<LinePainter>(
                        painter: LinePainter(
                      activePainter: Paint()
                        ..color = Colors.white
                        ..strokeWidth = 3
                        ..style = PaintingStyle.stroke,
                      inactivePainter: Paint()
                        ..color = const Color.fromARGB(255, 228, 217, 217)
                            .withAlpha(100)
                        ..strokeWidth = 1.5,
                      currentPageIndex: currentIndex,
                      pagesLength: pagesLength,
                      netDragPercent: netDragDistance,
                      lineWidth: 50,
                      translate: false,
                      slideDirection: SlideDirection.none,
                    )),
                  ),
                ),
                if (currentIndex == 2)
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Primarybutton(
                            text: 'Sign In',
                            onPressed: () => handleButtonPress(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SecondaryButton(
                            text: 'Sign Up',
                            onPressed: () => handleButtonPress(),
                          ),
                        ),
                      ),
                    ],
                  )
                else
                  const SizedBox(
                    height: 80.0,
                  ),
              ],
            );
          },
          buildHeader: (context, netDragDistance, pagesLength, currentIndex,
              setIndex, slideDirection) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Vistream',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    if (currentIndex < 2)
                      TextButton(
                          onPressed: () {
                            setIndex(2);
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                          child: const Text('Skip')),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
