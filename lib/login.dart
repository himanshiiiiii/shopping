import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/splash.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:100.0),
              child: Center(child: Text("Hello Again!",style: GoogleFonts.poppins(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w500,decoration: TextDecoration.none),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Center(child: Text("Welcome back you've been missed",style: GoogleFonts.poppins(fontSize: 15,color: Colors.black45,decoration: TextDecoration.none),)),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                keyboardType: TextInputType.none,

                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.mail),
                  filled: true,
                  fillColor: Colors.black12,
                  // border: OutlineInputBorder(),
                  hintText: "abc@gmail.com",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                keyboardType: TextInputType.none,

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.black12,
                  border: InputBorder.none,
                  // border: OutlineInputBorder(),
                  hintText: "password",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:220.0,top: 10),
              child: Text("Forgot Password ?",style: GoogleFonts.aBeeZee(color: Colors.teal,fontSize: 14)),
            ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Material(
    // height: 50,
    child: Ink(
    color: Colors.teal,
    child: InkWell(

    onTap: (){
    Navigator.pushReplacementNamed(context, "splash");
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text("Sign in",style: GoogleFonts.poppins(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
        ),
        Icon(Icons.arrow_forward),

      ],
    ),
    ),
    ),
    ),
    ),
            SizedBox(
              height: 10,
            ),
            Row(
              children:
                const[
                  Expanded(child: Divider(
                    indent: 20,
                    endIndent: 10,
                    color: Colors.black38,
                    thickness: 1,
                  ),
                  ),
                  Text("Continue with",style: TextStyle(color: Colors.black54,fontSize: 10,fontWeight: FontWeight.bold),),
                  Expanded(child: Divider(
                    indent: 10,
                    color: Colors.black38,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  ),
                ]

            ),
            SizedBox(
              height: 10,
            ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
                   // IconButton(onPressed: ()=>launchUrl(Uri(path: "www.google.com")), icon: Icon(FontAwesomeIcons.google))
                    Container(
                      height: 50,
                      width: 50,
                      decoration:BoxDecoration(
                        color: Colors.black12,
                        image: DecorationImage(image: AssetImage("assets/google.png"))
                      )
                    ),
           SizedBox(width: 20,),
           Container(
               height: 45,
               width: 45,
               decoration:BoxDecoration(
                 color: Colors.black12,
                   image: DecorationImage(image: AssetImage("assets/apple-logo.png"),fit: BoxFit.fitHeight
                   )
               )
           ),
SizedBox(width: 20,),
           Container(
               height: 45,
               width: 45,
               decoration:BoxDecoration(
                   color: Colors.black12,
                   image: DecorationImage(image: AssetImage("assets/fb.png"),fit: BoxFit.fitHeight
                   )
               )
           )
                   ],
       ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Create an Account",style: GoogleFonts.poppins(fontSize: 13,color: Colors.teal,decoration: TextDecoration.underline),)),
            ),
          ],
        ),
      ),
    );
  }
}
