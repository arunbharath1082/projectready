import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Color(0xFF0A0E21)



const activecolor = Color(0xff4fc3f7);
//Color(0xff4fc3f7);
//Color(0xFF0A0E21);

class InputPageDoc extends StatefulWidget {
  @override
  InputPageStateDoc createState() => InputPageStateDoc();
}

class InputPageStateDoc extends State<InputPageDoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
//        Color(0xFF0A0E21),

        appBar: AppBar(
          title: Center(child: Text('DMS',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 40,

            ),
          )),
        ),

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/cloud.jpg'),
                fit: BoxFit.cover,
              )),
          child: Column(

              children: <Widget>[

                Row(

                  children: <Widget>[
                    Expanded(
                      child: FadeAnimation(0.5,
                        Reusablecard(
                          onpress: () {
                            setState(() {

                            });
                          },
                          colour:activecolor,
                          card:
                             Cardwidget(

                              label: "Treat Patient",
                            ),

                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FadeAnimation(2,
                           Container(
                            width: 200,
                            height: 400,
                            margin: EdgeInsets.all(10),
                            child: Reusablecard(
                              onpress: () {
                                print('arun');
                                setState(() {
                                });
                              },
                              colour: activecolor,

                              card: Cardwidget(

                                label: "My History",
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            FadeAnimation(2.3,
                               Container(
                                width: 170,
                                height: 130,
                                child: Text('Hope you '
                                    'are doing Well !!',
                                  style:TextStyle(
                                    color: Colors.black87,
                                    fontSize: 30,
                                    fontFamily: 'PlayfairDisplay',
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 170,
                              height: 180,

                              child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: FadeAnimation(2.6,
                                    Container(
                                        width: 10,
                                        height: 10,
                                        child: Image.asset('assets/Settings-icon.png')),
                                  )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),

                    ]),
              ],
                ),
        )
        );
  }
}

class Cardwidget extends StatelessWidget {
  Cardwidget({@required  this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'PlayfairDisplay',

          color: Colors.black87,
          fontWeight:FontWeight.w700,
//          color: Color(0xFF8D8E98),
          fontSize: 33,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.colour, this.card, this.onpress});
  final Color colour;
  final Widget card;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height:150,
        child: card,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(

            color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
