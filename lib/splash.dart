import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoHome();
  }
  _navigatetoHome() async{
    await Future.delayed(Duration(milliseconds: 1500,),(){});
    Navigator.pushReplacementNamed(context, "first");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text("Hey Himanshi,",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
        Center(child: Text("Wait here,we are fetching data",style: GoogleFonts.poppins(fontSize: 18,color: Colors.grey,)))
    ]
        )
    );
  }
}
