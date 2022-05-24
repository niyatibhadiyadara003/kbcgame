import 'package:flutter/material.dart';
import 'package:kbcgame1/main.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assetes/images/lose.png",height: 80,),
          const SizedBox(height:20),
          Text(
            "oops!",
            style: TextStyle(
              color: Color(0xffd4d4ff),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height:20),
          Text(
            "Sorry You are \n       Lose",
            style: TextStyle(
              color: Color(0xffd4d4ff),
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height:20),
          ElevatedButton(
            onPressed: () {
              setState(()  {
                Navigator.of(context).pushNamedAndRemoveUntil("/", (Homepage) => false);
              });
            },
            child: Text("Try again",style: TextStyle(
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
    );
  }
}
