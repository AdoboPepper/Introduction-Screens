import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_screens/main.dart';

class IntroScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Genshin Tip 1",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "Pay attention to the elements and switch characters constantly. Genshin Impact is not a game where one character is played and the other 3 slots are ignored.",
            image: Image.asset(
              "images/1.png",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Genshin Tip 2",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "This Pity system also applies to 5-star rewards in that, if players don't get a 5-star in 89 rolls, they 100% will on the 90. Additionally, if players get a 4-star somewhere before their 10th roll, the count restarts. ",
            image: Image.asset(
              "images/2.png",
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Genshin Tip 3",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body:
            "All characters in this game have one Passive that's unlocked as soon as they're collected, and a few others that will unlock as that character ascends to Phase 2 and so on. ",
            image: Image.asset(
              "images/3.png",
              height: 400,
              width: 400,
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Color(0xFF6C63FF),
        ),
        done: Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xFF6C63FF),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: Size.square(10.0),
            activeSize: Size(20.0, 10.0),
            color: Colors.black,
            activeColor: Color(0xFF6C63FF),
            spacing: EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
      ),
    );
  }
}

