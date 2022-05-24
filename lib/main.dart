import 'dart:math';
import 'package:flutter/material.dart';
import 'Forthpage.dart';
import 'Secondpage.dart';
import 'Thirdpage.dart';
import 'list.dart';
import 'modal.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Homepage(),
        "Secondpage": (context) => Secondpage(),
        "Thirdpage": (context) => Thirdpage(),
        "Forthpage": (context) => Forthpage(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int i = 0;
  int v = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: IndexedStack(
          index: i,
          children: question.map((e) => displayquestion(e)).toList(),
        )),
        Expanded(
          child: IndexedStack(
            index: i,
            children: question.map((e) => displayanswer(e)).toList(),
          ),
        ),
      ],
    );
  }

  Widget displayquestion(Questionbank q) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: mycolor[i],
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 410,
              child: Text(
                "${q.id}. ${q.title}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget displayanswer(Questionbank q) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.result == q.ansA) {
                              if (q.id >= 1 && q.id < 4) {
                                v += 1000;
                                if (q.id == 3) {
                                  v += 2000;
                                }
                              }
                              if (q.id >= 4) {
                                v = v * 2;
                              }
                              if (q.id >= 10) {
                                Navigator.of(context).pushNamed("Forthpage");
                              }
                              Navigator.of(context)
                                  .pushNamed("Secondpage", arguments: v);
                            } else {
                              Navigator.of(context).pushNamed("Thirdpage");
                              print("hello");
                            }
                            i++;
                          });
                        },
                        child: Text(
                          "A.${q.ansA}",
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.result == q.ansB) {
                              if (q.id >= 1 && q.id < 4) {
                                v += 1000;
                                if (q.id == 3) {
                                  v += 2000;
                                }
                              }
                              if (q.id >= 4) {
                                v = v * 2;
                              }
                              if (q.id >= 10) {
                                Navigator.of(context).pushNamed("Forthpage");
                              }
                              Navigator.of(context)
                                  .pushNamed("Secondpage", arguments: v);
                            } else {
                              Navigator.of(context).pushNamed("Thirdpage");
                              print("hello");
                            }
                            i++;
                          });
                        },
                        child: Text(
                          "B.${q.ansB}",
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.result == q.ansC) {
                              if (q.id >= 1 && q.id < 4) {
                                v += 1000;
                                if (q.id == 3) {
                                  v += 2000;
                                }
                              }
                              if (q.id >= 4) {
                                v = v * 2;
                              }
                              if (q.id >= 10) {
                                Navigator.of(context).pushNamed("Forthpage");
                              }
                              Navigator.of(context)
                                  .pushNamed("Secondpage", arguments: v);
                            } else {
                              Navigator.of(context).pushNamed("Thirdpage");
                              print("hello");
                            }
                            i++;
                          });
                        },
                        child: Text(
                          "C.${q.ansC}",
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (q.result == q.ansD) {
                              if (q.id >= 1 && q.id < 4) {
                                v += 1000;
                                if (q.id == 3) {
                                  v += 2000;
                                }
                              }
                              if (q.id >= 4) {
                                v = v * 2;
                              }
                              if (q.id >= 10) {
                                Navigator.of(context).pushNamed("Forthpage");
                              }
                              Navigator.of(context)
                                  .pushNamed("Secondpage", arguments: v);
                            } else {
                              Navigator.of(context).pushNamed("Thirdpage");
                              print("hello");
                            }
                            i++;
                          });
                        },
                        child: Text(
                          "D.${q.ansD}",
                          style: TextStyle(
                            color: Color(0xffa8a8a9),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff1e1f23),
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:math' as math;

void main()
{
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>  with SingleTickerProviderStateMixin{
  late AnimationController c;

  @override
  void initState()
  {
    super.initState();

    c = AnimationController(vsync: this,duration: const Duration(seconds:10))..repeat();
  }

  @override
  void dispose()
  {
    super.dispose();
    c.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: c,
              builder: (_,child){
                return Transform.rotate(angle: c.value*2*math.pi,
                  child: child,);
              },
              child: Image.asset("assetes/images/fullmoon.jpg",height: 210,),
            ),
          ),
          Center(
            child: Container(
              height:161,
              width:161,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(.1),
                        Colors.white.withOpacity(.05),
                        Colors.white.withOpacity(.05),
                        Colors.white.withOpacity(.1),
                        Colors.white.withOpacity(.2),
                        Colors.white.withOpacity(.3),
                        Colors.white.withOpacity(.4),
                        Colors.white.withOpacity(.5),
                        Colors.white.withOpacity(.6),
                        Colors.white.withOpacity(.7),
                        Colors.white.withOpacity(.8),
                        Colors.white.withOpacity(.9),
                        Colors.white.withOpacity(.9),
                        Colors.white.withOpacity(1),
                        Colors.white.withOpacity(1),
                      ]
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

*/
