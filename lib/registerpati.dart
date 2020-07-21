import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
void main()=>runApp(Reg2());

// ignore: camel_case_types
class Reg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white70,
      ),
      home: patiregister(),
    );
  }
}

class patiregister extends StatefulWidget {
  @override
  _patiregisterState createState() => _patiregisterState();
}

class _patiregisterState extends State<patiregister> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color(0xff4fc3f7),
      body: SingleChildScrollView(
        child: FadeAnimation(1,Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('assets/cloud.jpg'),
                fit: BoxFit.cover
            ),),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              FadeAnimation(1.4,Text('Registration',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'PlayfairDisplay',
                ),)),
              SizedBox(
                height: 15,
              ),
              FadeAnimation(1.9,Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffbbdefb),
                    ),

                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(2.1,Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(color: Colors.black))
                      ),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "  User Id",
                            hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                            border: InputBorder.none
                        ),
                        onChanged: (str){
                        },
                        onTap: (){
                        },
                      ),
                    )),
                    SizedBox(
                      height: 9,
                    ),
                    FadeAnimation(2.4,Container(
                          margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(color: Colors.black))
                      ),
                      child: TextField(
                          keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "  Phone number",
                            hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                            border: InputBorder.none
                        ),
                        onChanged: (str){
                        },
                        onTap: (){
                        },
                      ),
                    )),
                    SizedBox(
                      height: 9,
                    ),
                    FadeAnimation(2.6,
                       Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(bottom: BorderSide(color: Colors.black))
                        ),
                        child: TextField(

                          decoration: InputDecoration(
                              hintText: "  user@gmail.com",
                              hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                              border: InputBorder.none
                          ),
                          onChanged: (str){
                          },
                          onTap: (){
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    FadeAnimation(2.9,
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(bottom: BorderSide(color: Colors.black))
                        ),
                        child: TextField(

                          decoration: InputDecoration(
                              hintText: "  password",
                              hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                              border: InputBorder.none
                          ),
                          onChanged: (str){
                          },
                          onTap: (){
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    FadeAnimation(3,
                       Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(bottom: BorderSide(color: Colors.black))
                        ),
                        child: TextField(

                          decoration: InputDecoration(
                              hintText: "  Retype password",
                              hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                              border: InputBorder.none
                          ),
                          onChanged: (str){
                          },
                          onTap: (){
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    FadeAnimation(3.4,
                       Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 70),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,

                        ),
                        child: Center(
                          child: AnimatedButton(
                            width: 200,
                            text: "Sign up",

                            pressEvent: (){
                              AwesomeDialog(
                                context: context,
                                animType: AnimType.LEFTSLIDE,
                                dialogType: DialogType.INFO,
                                keyboardAware: false,
                                body: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Enter the verification code',
                                        style: Theme.of(context).textTheme.headline6,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Material(
                                        elevation: 0,
                                        color: Colors.blueGrey.withAlpha(40),
                                        child: TextField(
                                          autofocus: true,
                                          keyboardType: TextInputType.number,
                                          minLines: 1,
                                          decoration: InputDecoration(
                                            focusColor: Colors.white10,
                                            border: InputBorder.none,
                                            prefixIcon: Icon(Icons.confirmation_number),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RaisedButton(
                                        onPressed: (){

                                        },
                                        color: Colors.blueAccent,
                                        splashColor: Colors.white10,

                                        autofocus: true,
                                        child: Text('VERIFY'),

                                      ),

                                    ],
                                  ),
                                ),
                              )..show();
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 64,
              )
            ],

          ),
        )),
      ),
    );
  }
}
