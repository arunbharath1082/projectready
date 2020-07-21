import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animation.dart';

// ignore: camel_case_types
class doctor_patient extends StatefulWidget {
  @override
  _doctor_patientState createState() => _doctor_patientState();
}

class _doctor_patientState extends State<doctor_patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
//        Color(0xFF0A0E21),

        appBar: AppBar(
        title: Center(child: Text('DMS',
        style: TextStyle(
          fontFamily: 'PlayfairDisplay',
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 40,

    ),
    )),
    ),
    body:FadeAnimation(1,
       Container(
        decoration: BoxDecoration(

          image: DecorationImage(
            image: AssetImage('assets/cloud.jpg'),
            fit: BoxFit.fill
          )
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        FadeAnimation(1.3,
          Text('Choose',
          style:TextStyle(
          fontSize: 40,
          fontFamily: 'PlayfairDisplay',
          fontWeight: FontWeight.w600,
          color: Colors.black,

          ) ,
          textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 50,
        ),

        FadeAnimation(1.5,
           GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/second');
            },
            child: Container(
              height: 100,
              width: 111,
            decoration: BoxDecoration(
            image:DecorationImage(
            image: AssetImage('assets/doctor.png'),
              fit: BoxFit.cover

            )
            ),
            ),
          ),
        ),
          FadeAnimation(1/7,
            Text('I am Doctor',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'PlayfairDisplay',
              color: Colors.black,
              fontSize: 15,

            ),),
          ),
          SizedBox(
            height: 50,
          ),

          FadeAnimation(1.8,
             GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/third');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 111,
                    decoration: BoxDecoration(
                        image:DecorationImage(
                            image: AssetImage('assets/patient.png'),
                            fit: BoxFit.cover

                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          FadeAnimation(2,
             Text('I am Patient',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'PlayfairDisplay',
              color: Colors.black,
              fontSize: 15,

            ),),
          ),
        ],
        ),
      ),
    ),);
  }
}
