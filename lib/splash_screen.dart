import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel33/home.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())),
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9677fc),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Row(
            children: [
              SizedBox(width: 120,),
              Text("Hay Travellers !!!", style: TextStyle(color: Colors.white, fontSize: 25),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 130,),
              Text("  Welcome ", style: GoogleFonts.brawler(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),),
            ],
          ),
          Row(
            children: [
              // SizedBox(width: 120,),
              // Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 40),),
              Image.asset("assets/image0.gif", height: 450.0,
                width: 400.0,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 110,),
              Text(" Mad With ", style: TextStyle(color: Colors.white, fontSize: 18),),
              Image.asset("assets/l.ico", height: 24, width: 24,),
              Text("in Flutter ", style: TextStyle(color: Colors.white, fontSize: 18),),
            ],
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 160,),
            Text("By Habibullah", style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline),)
          ],)
          // SizedBox(height: 40,),
          // Row(
          //   children: [
          //     SizedBox(width: 40,),
          //     Text("Hay Travellers !!!", style: TextStyle(color: Colors.white, fontSize: 25),),
          //   ],
          // ),

        ],
      ),
    );
  }
}
