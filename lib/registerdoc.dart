import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
void main() {
  runApp(IICpage());
}

class IICpage extends StatefulWidget {
  @override
  _IICpageState createState() => _IICpageState();
}

class _IICpageState extends State<IICpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white70,
      ),
      home: docregister(),

    );
  }
}





class docregister extends StatefulWidget {
  @override
  _docregisterState createState() => _docregisterState();
}
class _docregisterState extends State<docregister> {
  bool passwordeye1=true;
  bool passwordeye2=true;
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('assets/cloud.jpg'),
                fit: BoxFit.cover
            )),
          child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                FadeAnimation(0.8,
                  Text('Registration',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'PlayfairDisplay',
                  ),),
                ),
                SizedBox(
                  height: 15,
                ),
                FadeAnimation(1,
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffbbdefb),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 20,
                            offset: Offset(10, 10)
                        )],

                      borderRadius: BorderRadius.circular(30)
                    ),

                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeAnimation(1.6,
                           Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                              color: Colors.white,
                               border: Border(bottom: BorderSide(color: Colors.black)),

                            ),
                            child: TextField(

                              decoration: InputDecoration(

                                  hintText: "  User Id",
                                  hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
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
                        FadeAnimation(1.8,
                           Container(
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
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        FadeAnimation(2,
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(bottom: BorderSide(color: Colors.black))
                            ),
                            child: TextField(

                              decoration: InputDecoration(
                                  hintText: "  doctor@gmail.com",
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
                        FadeAnimation(2.2,
                           Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(bottom: BorderSide(color: Colors.black))
                            ),
                            child: TextField(

                              decoration: InputDecoration(
                                  hintText: "  Licence Id",
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
                        FadeAnimation(2.5,
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(bottom: BorderSide(color: Colors.black))
                            ),
                            child: TextField(
                              obscureText: passwordeye1,

                              decoration: InputDecoration(
                                  hintText: "  password",
                                  hintStyle: TextStyle(color: Colors.black,fontSize:15,fontFamily: 'PlayfairDisplay'),
                                  border: InputBorder.none,
                                  suffixIcon: GestureDetector(
                                    child: Icon(FontAwesomeIcons.eye),
                                    onTap: (){
                                      setState(() {
                                        passwordeye1=passwordeye1==true?false:true;
                                      });
                                    },
                                  )
                              ),

                              onChanged: (str){
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        FadeAnimation(2.8,
                           Container(

                            margin: EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(

                                color: Colors.white,
                                border: Border(bottom: BorderSide(color: Colors.black)),

                            ),
                            child: TextField(
                              obscureText: passwordeye2,

                              decoration: InputDecoration(
                                  hintText: "  Retype password",
                                  hintStyle: TextStyle(color: Colors.black,
                                      fontSize:15,
                                      fontFamily: 'PlayfairDisplay'),
                                  border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                    child: Icon(FontAwesomeIcons.eye),
                                onTap: (){
                                      setState(() {
                                        passwordeye2=passwordeye2==true?false:true;
                                      });
                                },
                                )

                              ),
                              onChanged: (str){
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        FadeAnimation(3,
                           Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 70),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,

                            ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
        ),

    );
  }
}
