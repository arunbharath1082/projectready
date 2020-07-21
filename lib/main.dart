import 'package:flutter/material.dart';
import 'Inputpage.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'login.dart';
import 'patient.dart';
import 'registerdoc.dart';
import 'registerpati.dart';
import 'inputpage_doctor.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };
   runApp(IICpage());
}

class IICpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white70,
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>login(),
        '/first':(context)=>doctor_patient(),
        '/second':(context)=>docregister(),
        '/third':(context)=>patiregister(),
        '/forth':(context)=>InputPageDoc(),
        '/fivth':(context)=>InputPagepatient(),
      },
    );
  }
}

//Color(0xFF0A0E21)