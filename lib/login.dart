
import 'package:ICC/registerdoc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
String text;
bool passwordeye=true;
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text('DMS',style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 40,
            fontFamily: 'PlayfairDisplay'

          ),),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff4fc3f7)
          ),
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('assets/cloud.jpg'),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:20,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: FadeAnimation(1,Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Login", style: TextStyle(color: Colors.white,fontFamily: 'PlayfairDisplay', fontSize: 40),),
                      SizedBox(height: 10,),
                      Text("Welcome Back", style: TextStyle(color: Colors.white, fontFamily: 'PlayfairDisplay',fontSize: 18),),
                    ],
                  )),
                ),
                SizedBox(height: 40),
                FadeAnimation(2,Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 60,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10)
                                  )]
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.black38))
                                    ),
                                    child: FadeAnimation(2.5,TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          hintText: "Phone number",
                                          hintStyle: TextStyle(color: Colors.blueGrey,fontFamily: 'PlayfairDisplay'),
                                          border: InputBorder.none,

                                      ),
                                      onChanged: (str){
                                        text=str;
                                      },
                                  onTap: (){
                                        print(text);
                                  },
                                    )),
                                  ),
                                  Container(

                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.black38))
                                    ),
                                    child: FadeAnimation(2.7,TextField(
                                      obscureText: passwordeye,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(color: Colors.blueGrey,fontFamily: 'PlayfairDisplay',),
                                          border: InputBorder.none,
                                          suffixIcon: GestureDetector(
                                              child: Icon(FontAwesomeIcons.eye),
                                            onTap: (){
                                                setState(() {
                                                  passwordeye=passwordeye==true?false:true;
                                                });
                                            },
                                          )
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                             GestureDetector(
                                 child: Padding(
                                   padding: const EdgeInsets.fromLTRB(230, 0, 0,50)
                                   ,

                                   child: Text("Forgot Password?",
                                     style: TextStyle(color: Colors.blueGrey,fontFamily: 'PlayfairDisplay'),),
                                 )),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 50,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xff4fc3f7)
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.pushNamed(context, '/forth');

                                        },
                                          child: Text("Login",
                                            style: TextStyle(
                                                color: Colors.white,fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold),)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xff4fc3f7)
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                          onTap: (){
                                        Navigator.pushNamed(context, '/first');
                                          },
                                          child: Text("Sign up",
                                            style: TextStyle(
                                                color: Colors.white,fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold),)),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                      ]),
                        ),
                      ),
                    ),
                  )),
              ] ),
          ),

          ),
      ),
      );

  }
}