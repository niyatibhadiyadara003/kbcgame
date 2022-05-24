import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {


  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute
        .of(context)!
        .settings
        .arguments;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assetes/images/fire-cracker.png", height: 100,
              alignment: Alignment.center,),
            const SizedBox(height: 20),
            Text(
              "Your Answer Is Correct",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Your Won",
              style: TextStyle(
                color:Color(0xffc78640),
                fontSize: 20,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 10),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                    "₹ $args", speed: Duration(milliseconds: 150), textStyle:TextStyle(
                  color:Color(0xffc78640),
                  fontSize: 20,
                  decoration: TextDecoration.none,
                ))
              ],
              isRepeatingAnimation: true,
              repeatForever: true,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Text("Next", style: TextStyle(
                color: Color(0xffd6d6d6),
                fontSize: 20,
                decoration: TextDecoration.none,
              ),),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.2),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}


