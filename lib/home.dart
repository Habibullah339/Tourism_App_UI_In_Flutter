import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel33/dashboard/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9677fc),
      body: Column(
        children: [

          Container(
            height: 430,
            width: 450,
            decoration:  const BoxDecoration(
              color: Color(0xff9677fc),
              image: DecorationImage(
                image: AssetImage("assets/travel2.PNG"),
                //image: Image.asset("assets/design2.PNG"),
                fit: BoxFit.none,
              ),
            ),
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Container(
            height: 390,
            width: 450,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.only(
                // ignore: prefer_const_constructors
                  topLeft: Radius.circular(80),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(80)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),

 Row(children: [
   SizedBox(width: 90,),
   Text("Enjoy Every ", style: GoogleFonts.poppins(fontSize: 38, color: Colors.black,fontWeight: FontWeight.bold)),
 ],),
                Row(children: [
                  SizedBox(width: 65,),
                  Text(" Good Moment", style: GoogleFonts.poppins(fontSize: 38, color: Colors.black,fontWeight: FontWeight.bold)),
                ],),
  Row(
    children: [
      SizedBox(width: 130,),
      Text("Enjoy  Your  Vacation  !", style: GoogleFonts.montserrat(fontSize: 15, color: Colors.grey),),
    ],
  ),
                SizedBox(height: 30,),
                GestureDetector(

                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>   DetailScreen() ));
                  },
                  child: Container(
                    height: 70,
                    width: 240,


                    decoration: BoxDecoration(
                      color: Color(0xff9677fc),
                      borderRadius: BorderRadius.circular(50),

                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 40,),

                        Text("Let's Explore", style: GoogleFonts.brawler(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>   DetailScreen() ));
                  },
                  child: Container(
                    height: 70,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Color(0xffcccd33),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 40,),

                        Text("Free Trail !", style: GoogleFonts.brawler(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
