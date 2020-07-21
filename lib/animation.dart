import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fancy Dialog Example',
     home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Dialog Example'),
        ),
        body: Center(
            child: Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    AnimatedButton(
                      text: 'Info Dialog',
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          headerAnimationLoop: false,
                          dialogType: DialogType.INFO,
                          animType: AnimType.BOTTOMSLIDE,
                          title: 'INFO',
                          desc: 'Dialog description here...',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Info Dialog Without buttons',
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          headerAnimationLoop: false,
                          dialogType: DialogType.INFO,
                          animType: AnimType.BOTTOMSLIDE,
                          title: 'INFO',
                          desc:
                          'Lorem ipsum dolor sit amet consectetur adipiscing elit eget ornare tempus, vestibulum sagittis rhoncus felis hendrerit lectus ultricies duis vel, id morbi cum ultrices tellus metus dis ut donec. Ut sagittis viverra venenatis eget euismod faucibus odio ligula phasellus,',
                        )..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Warning Dialog',
                      color: Colors.orange,
                      pressEvent: () {
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.WARNING,
                            headerAnimationLoop: false,
                            animType: AnimType.TOPSLIDE,
                            title: 'Warning',
                            desc:
                            'Dialog description here..................................................',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {})
                          ..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Error Dialog',
                      color: Colors.red,
                      pressEvent: () {
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.ERROR,
                            animType: AnimType.RIGHSLIDE,
                            headerAnimationLoop: false,
                            title: 'Error',
                            desc:
                            'Dialog description here..................................................',
                            btnOkOnPress: () {},
                            btnOkIcon: Icons.cancel,
                            btnOkColor: Colors.red)
                          ..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Succes Dialog',
                      color: Colors.green,
                      pressEvent: () {
                        AwesomeDialog(
                            context: context,
                            animType: AnimType.LEFTSLIDE,
                            headerAnimationLoop: false,
                            dialogType: DialogType.SUCCES,
                            title: 'Succes',
                            desc:
                            'Dialog description here..................................................',
                            btnOkOnPress: () {
                              debugPrint('OnClcik');
                            },
                            btnOkIcon: Icons.check_circle,
                            onDissmissCallback: () {
                              debugPrint('Dialog Dissmiss from callback');
                            })
                          ..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'No Header Dialog',
                      color: Colors.cyan,
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          headerAnimationLoop: false,
                          dialogType: DialogType.NO_HEADER,
                          title: 'No Header',
                          desc:
                          'Dialog description here..................................................',
                          btnOkOnPress: () {
                            debugPrint('OnClcik');
                          },
                          btnOkIcon: Icons.check_circle,
                        )..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Custom Body Dialog',
                      color: Colors.blueGrey,
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          animType: AnimType.SCALE,
                          dialogType: DialogType.INFO,
                          body: Center(
                            child: Text(
                              'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                          title: 'This is Ignored',
                          desc: 'This is also Ignored',
                        )..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Auto Hide Dialog',
                      color: Colors.purple,
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.INFO,
                          animType: AnimType.SCALE,
                          title: 'Auto Hide Dialog',
                          desc: 'This dialog autoHide after 2 seconds',
                          autoHide: Duration(seconds: 2),
                        )..show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Testing Dialog',
                      color: Colors.orange,
                      pressEvent: () {
                        AwesomeDialog(
                          context: context,
                          dismissOnBackKeyPress: false,
                          dialogType: DialogType.WARNING,
                          animType: AnimType.BOTTOMSLIDE,
                          btnCancelText: "Cancel Order",
                          btnOkText: "Yes, I will pay",
                          title: 'Continue to pay?',
                          padding: const EdgeInsets.all(16.0),
                          desc:
                          'Please confirm that you will pay 3000 INR within 30 mins. Creating orders without paying will create penalty charges, and your account may be disabled.',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AnimatedButton(
                      text: 'Body with Input',
                      color: Colors.blueGrey,
                      pressEvent: () {
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
                                      focusColor: Colors.red,
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
                                    splashColor: Colors.red,

                                    autofocus: true,
                                    child: Text('VERIFY'),

                                  ),
                                Material(
                                  elevation: 0,
                                  color: Colors.blueGrey.withAlpha(40),
                                  child: TextFormField(
                                    autofocus: true,
                                    keyboardType: TextInputType.multiline,
                                    maxLengthEnforced: true,
                                    minLines: 2,
                                    maxLines: null,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Description',
                                      prefixIcon: Icon(Icons.text_fields),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )..show();
                      },
                    ),
                  ],
                ),
              ),
            )));
  }
}





class Pop extends StatefulWidget {
  @override
  _PopState createState() => _PopState();
}

class _PopState extends State<Pop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  AnimatedButton(
        text: 'Body with Input',
        color: Colors.blueGrey,
        pressEvent: () {
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
                        focusColor: Colors.red,
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
                    splashColor: Colors.red,

                    autofocus: true,
                    child: Text('VERIFY'),

                  ),
                  Material(
                    elevation: 0,
                    color: Colors.blueGrey.withAlpha(40),
                    child: TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.multiline,
                      maxLengthEnforced: true,
                      minLines: 2,
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Description',
                        prefixIcon: Icon(Icons.text_fields),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )..show();
        },
      ),
    );
  }
}






class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    final tween = MultiTrackTween([
      Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track("translateY").add(
          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
          curve: Curves.easeOut)
    ]);

    // ignore: deprecated_member_use
    return ControlledAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(0, animation["translateY"]),
            child: child
        ),
      ),
    );
  }
}

