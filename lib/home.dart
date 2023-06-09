import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 350,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage("assets/main.jpg"),fit: BoxFit.fill)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(child: Text("Find your next \n Clothes here",style: GoogleFonts.poppins(fontSize: 30,color: Colors.black,fontWeight:FontWeight.bold,decoration: TextDecoration.none),),),
          ),
          Center(child: Text("Explore all the most trending clothes \n here based on your interest and go ",style: GoogleFonts.poppins(fontSize: 15,color: Colors.black45,decoration: TextDecoration.none),),),
          Center(child: Text(" shopping!",style: GoogleFonts.poppins(fontSize: 15,color: Colors.black45,decoration: TextDecoration.none),),),
          Padding(
          padding: const EdgeInsets.all(30.0),
                    child: Material(
                      // height: 50,
                      child: Ink(
                        color: Colors.teal,
                        child: InkWell(

                          onTap: (){
                            Navigator.pushNamed(context, "login");
                          },
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Head on to Explore !",style: GoogleFonts.poppins(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                          ),
          ),
                        ),
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}
