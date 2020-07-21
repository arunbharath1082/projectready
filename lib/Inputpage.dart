import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animation.dart';

//Color(0xFF0A0E21)

const activecolor = Colors.lightBlueAccent;
//Color(0xFF0A0E21);

class InputPagepatient extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPagepatient> {
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
          child: FadeAnimation(1,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Reusablecard(
                      onpress: () {
                        print('Arun');
                        setState(() {

                        });
                      },
                      colour:activecolor,
                      card: FadeAnimation(1.3,
                        Cardwidget(

                          label: "MY Medical History",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Reusablecard(
                        colour: activecolor,
                        card:FadeAnimation(1.3,Cardwidget(label: 'My Medicines'))
                        ),
                      ),

                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                      child: Reusablecard(
                        onpress: () {
                          setState(() {
                          });
                        },
                        colour: activecolor,

                        card: FadeAnimation(1.5,
                           Cardwidget(

                            label: "Latest prescription",
                          ),
                        ),
                      ),

                  ),
                 Expanded(
                   child: FadeAnimation(1.6,
                     Text('Hope you '
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
                  Expanded(
                    child: Reusablecard(
                      onpress: () {
                        setState(() {

                        });
                      },
                      colour:activecolor,
                      card: FadeAnimation(1.8,
                         Cardwidget(

                          label: "Current Medication",
                        ),
                      ),
                    ),

                  ),
                  Expanded(

                  child: GestureDetector(
                    onTap: (){
                      print('Arun');
                    },
                      child: FadeAnimation(1.9, Image.asset('assets/Settings-icon.png'))
                  ),
                  ),


                ],
              )
            ]),
          ),
        ));
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
