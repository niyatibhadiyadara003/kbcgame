import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Forthpage extends StatefulWidget {
  const Forthpage({Key? key}) : super(key: key);

  @override
  _ForthpageState createState() => _ForthpageState();
}

class _ForthpageState extends State<Forthpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assetes/images/fire-cracker.png",height: 100,alignment: Alignment.center,),
            const SizedBox(height:20),
            Text(
              "Congratulations",
              style: TextStyle(
                color: Color(0xff5b5f62),
                fontSize: 18,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height:40),
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText(
                    "Game Over", textStyle:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  decoration: TextDecoration.none,
                )),
                ScaleAnimatedText(
                    "Game Over", textStyle:TextStyle(
                  color: Colors.blue,
                  fontSize: 70,
                  decoration: TextDecoration.none,
                ))
              ],
            ),
            const SizedBox(height:40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamedAndRemoveUntil("/", (Homepage) => false);
                });
              },
              child: Text("Restart",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                decoration: TextDecoration.none,
              ),),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.2),
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}

