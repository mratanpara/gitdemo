import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

const duration = Duration(milliseconds: 500);

class OnBoarding extends StatefulWidget {
  static const String id = 'onBoarding_screen';
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final pages = <Widget>[
    Container(
      color: Colors.redAccent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Align(
                child: FlutterLogo(size: 150),
                alignment: Alignment.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'We’ve Got Your Style',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Your home is a reflection of you. Nail your aesthetic with products our stylists love and recommend',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Container(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Align(
                child: FlutterLogo(size: 150),
                alignment: Alignment.center,
              ),
              Text(
                'MAKE YOUR',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'HOME BEAUTIFUL',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'The best simple place where you discover most wonderful furniture\'s and make your home beautiful',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 880,
      ),
    );
  }
}
