import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/first.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Subscribe extends StatefulWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  int i=0;
  String t="";
  bool _isChecked = false;
  Widget checkbox(String t1)
  {
    return  Row(
        children: [

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Checkbox(value: _isChecked, onChanged: (newbool)
    {
    setState(() {
    _isChecked=newbool!;
    });
    },
  activeColor: Color(0xff006A4E),
  tristate: false,
  ),

  ),


  Text( t,style: TextStyle(color: Colors.black),),
    ]
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15),
                  child: Icon(Icons.arrow_back_ios,size: 20,),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Get Premium Features",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500)),
                )
                
              ],
            ),
            Row(
              children: [

    Expanded(
      child: Padding(
      padding: const EdgeInsets.only(left: 25,right: 10,top: 20,bottom: 10),
      child:GestureDetector(
        onTap: (){
          setState(() {
         i=1;
          });
        },

        child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
        color: (i==1)?Color(0xff99E6DA):Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.black,width: 2)
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Padding(
               padding: const EdgeInsets.only(top:8.0),
               child: Text("Monthly",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600)),
             ),
               Text("Without Trials",style: GoogleFonts.poppins(fontSize: 11,color: Colors.black,)),
    SizedBox(
        height: 20,
    ),
    Text("\$9.99",style: GoogleFonts.poppins(fontSize: 18,color: (i==1)? Color(0xff006A4E):Colors.black,fontWeight: FontWeight.w800)),
              Text("Per Month",style: GoogleFonts.poppins(fontSize: 11,color: Colors.black,),),
  SizedBox(
    height: 40,
  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // FaIcon(FontAwesomeIcons.barChart),

                  // FaIcon(FontAwesomeIcons.book),
                  Icon(Icons.bar_chart_sharp,size: 20,),
                  SizedBox(width: 5,),

                  FaIcon(FontAwesomeIcons.pencil,size: 18,),
                  SizedBox(width: 5,),
                  Icon(Icons.sticky_note_2_sharp,size: 20,)
                ],
              )

            ],
          ),
        ),
      ),
      ),
    ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 10,top: 20,bottom: 10),
                    child:GestureDetector(
                      onTap: (){
                        setState(() {
                       i=2;
                        });
                      },
                      child: Container(
                        height: 230,
                        width: 150,
                        decoration: BoxDecoration(
                            color: (i==2)?Color(0xff99E6DA):Color(0xffF0F0F0),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.black,width: 2)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0),
                              child: Text("Yearly",style: GoogleFonts.poppins(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600)),
                            ),
                            Text("14-Day Trials",style: GoogleFonts.poppins(fontSize: 11,color: Colors.black,)),
                            SizedBox(
                              height: 20,
                            ),
                            Text("\$49.99",style: GoogleFonts.poppins(fontSize: 18,color: (i==2)? Color(0xff006A4E):Colors.black,fontWeight: FontWeight.w800)),
                            Text("Per Year",style: GoogleFonts.poppins(fontSize: 11,color: Colors.black,),),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // FaIcon(FontAwesomeIcons.barChart),

                                // FaIcon(FontAwesomeIcons.book),
                                Icon(Icons.bar_chart_sharp,size: 20,),
                                SizedBox(width: 5,),

                                FaIcon(FontAwesomeIcons.pencil,size: 18,),
                                SizedBox(width: 5,),
                                Icon(Icons.sticky_note_2_sharp,size: 20,)
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 20),
              child: Text("Get ready to enjoy premium benefit with us .Get upgraded with your account and never miss any benefit updated on your favourite items.",style: GoogleFonts.poppins(fontSize: 13,color: Color(0xff006A4E)),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Material(
                // height: 50,
                child: Ink(
                  color:Color(0xff006A4E),
                  child: InkWell(

                    onTap: (){
                      Navigator.pushNamed(context, "first");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Stack(
                        children: [
                          Container(
                            height: 90,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Color(0xff006A4E),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:Row(
                                children: [
                                  const SizedBox(
                                    width: 48,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Subscribed!",style: GoogleFonts.poppins(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
                                        Text("Enjoy Shopping",style: GoogleFonts.poppins(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),


                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      backgroundColor:Colors.transparent ,
                        behavior: SnackBarBehavior.floating,
                        elevation: 0,
                        

                      )
                      );

                    },
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Try Free and subscribe",style: GoogleFonts.poppins(fontSize: 15,color: Colors.white,decoration: TextDecoration.none),),
                    ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
