import 'dart:async';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),
          ()=>Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder: (context)=>Home())
              ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body:new Center(
        child:new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Padding(padding: EdgeInsets.only(top:170.0),
                  child:Image.asset('insa.png',width: 80.0,),
              ),
              Padding(padding: EdgeInsets.only(top:230.0),
                  child: Text('from',style: TextStyle(color:Colors.grey,),),
              ),
              Padding(padding: EdgeInsets.only(top:5.0),
                  child: Text('FACEBOOK',style: TextStyle(color:Colors.pink[100],fontSize: 18.0),)
              )    
           ],
        )
      )   
    );
  }
}