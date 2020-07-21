import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';


void main(){
  runApp(Reg2());
}
class Reg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.white70,
      ),
      home: Doctor_Menu(),
    );
  }
}






class Doctor_Menu extends StatefulWidget {
  @override
  _Doctor_MenuState createState() => _Doctor_MenuState();
}

Expanded geneprecription(){
  return Expanded(
      flex: 6,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
              decoration:BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DataTable(
                dataRowHeight: 100.0,
                columnSpacing: 23.0,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Medicine name',
                      style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '    Time   ',
                      style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                    'Morning',
                    style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Afternoon',
                      style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                    'Evening',
                    style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      '  Night  ',
                      style: TextStyle(fontStyle: FontStyle.italic,fontSize: 18.0),
                    ),
                  ),
                ],
              rows: <DataRow>[
              generaterow(),
            ],
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

DataCell genDataCell(){
  return DataCell(
    TextField(
      style: TextStyle(fontSize: 20.0),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          focusColor: Colors.black,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              style: BorderStyle.none,
              color: Colors.black,
            )
        ),
      ),
    ),
  );
}

DataRow generaterow(){
  return DataRow(
    cells: <DataCell>[
      genDataCell(),
      genDataCell(),
      genDataCell(),
      genDataCell(),
      genDataCell(),
      genDataCell(),
    ],
  );
}


class _Doctor_MenuState extends State<Doctor_Menu> {
  AssetImage background = new AssetImage('assets/cloud.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: background,
              fit: BoxFit.cover
            )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                geneprecription(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                        width: 120.0,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.black,
                                // width: 10.0,
                              )
                          ),
                          child: Text('Add Row',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "CenturyGothic",fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          textColor: Colors.white,
                          elevation: 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        height: 70.0,
                        width: 120.0,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.black,
                                // width: 10.0,
                              )
                          ),
                          child: Text('Treat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "CenturyGothic",fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                            ),
                          ),
                          textColor: Colors.white,
                          elevation: 5,
                        ),
                      ),
                      SizedBox(
                        height: 70.0,
                        width: 120.0,
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: Colors.black,
                                // width: 10.0,
                              )
                          ),
                          child: Text('History',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "CenturyGothic",fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          textColor: Colors.white,
                          elevation: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
