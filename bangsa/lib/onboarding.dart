import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bangsa/intro_screen/introscreen1.dart';
import 'package:bangsa/intro_screen/introscreen2.dart';
import 'package:bangsa/intro_screen/introscreen3.dart';
import 'package:bangsa/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'homepage.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller
  PageController _controller = PageController();

  //keep track if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //pageview
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        //dot indicator
        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //skip
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text('Skip'),
              ),

              //dot indicator
              SmoothPageIndicator(controller: _controller, count: 3),

              //done or next
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text('Start'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 350),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text('Next'),
                    )
            ],
          ),
        )
      ],
    ));
  }
}
