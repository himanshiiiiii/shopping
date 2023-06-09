import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:badges/badges.dart';
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
int i=0;
int j=0;
  @override
  Widget categories(icon, {required color}){
    return Container(
      alignment: Alignment.center,
   height: 45,
      width: 45,
      color: color,
      child: FaIcon(icon),
    );
  }
  // Color(0xffE8E8E8)
  Widget arrivals(String t1,String t2,String t3,String img,icon)
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        color: Color(0xffE8E8E8),

       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(img)
                  )
                ),
              ),
              // child: Image(image: AssetImage(img),height: 70,width: 70,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t1,style: GoogleFonts.poppins(fontSize: 15,color: Colors.black)),
                Text(t2,style: GoogleFonts.poppins(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w700)),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff006A4E),
                  ),

                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border_outlined,color: Colors.white,size: 19,),
                      // SizedBox(width: 3,),
                      Text(t3,style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon,color:Color(0xff006A4E) ,size: 21,),
                Container(
                  height: 30,
                  width:30,
                  decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    border: Border.all(color: Colors.black,width: 0.1),


                  ),
                    child: Icon(Icons.add,color: Colors.black,size: 18,),)
              ],
            )
          ],
        )
      ),
    );
  }
  int _selected=0;
  static  TextStyle optionStyle=TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  static List _options=[
    Text('Index 0: Home',
      style: optionStyle,
    ),
    Text('Index 1: Search',
      style: optionStyle,
    ),
    Text('Index 2: Cart',
      style: optionStyle,
    ),
    Text('Index 3: Profile',
      style: optionStyle,
    ),

  ];
  void _onTapped(int index)
  {
    setState(() {
      _selected=index;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity,70),
          child: AppBar(

           automaticallyImplyLeading: false,
            elevation: 0,
            centerTitle: false,
            title: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 5),
                  child: Text("Hey Himanshi",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                ),
                Text("Begin your shopping !!",style: GoogleFonts.poppins(fontSize: 13,color: Colors.teal,),)
              ],
            ),
            backgroundColor: Colors.white,
            actions: [

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Badge(
                 smallSize: 6,
           label: Text("2",style: TextStyle(color: Colors.white),),
                 backgroundColor: Color(0xff006A4E),
                 child: InkWell(
            onTap: (){
                Navigator.pushNamed(context, "");
            },
                     child: Icon(Icons.notifications_on_outlined,color: Colors.black,)),
          ),
             )


            ],
          ),

        ),
body: ListView(
  children: [
    Padding(
      padding: const EdgeInsets.only(top:8.0,left: 20,right: 20,bottom: 10),
      child: Container(
        height: 150,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Color(0xff99E6DA),

        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Enjoy Upto \n50% Discount",style: GoogleFonts.poppins(fontSize: 13,color: Color(0xff006A4E),fontWeight: FontWeight.w600),),
                ),
              Material(
                child: Ink(
                  color: Color(0xff006A4E) ,
                  child: InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (_)=>NetworkGiffDialog(
                        image: Image.network("https://i.gifer.com/ON0.gif",
                          fit: BoxFit.cover,
                        ),
                        cornerRadius: 20,

                        buttonOkText: Text("Subscribe Now",style: TextStyle(color: Colors.white),),
                        buttonOkColor: Color(0xff006A4E),
                        buttonCancelColor: Color(0xff006A4E),
                        title: Text("Enjoy Offers",style: GoogleFonts.poppins(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w700),
                        ),
                        description: Text("Get ready to enjoy premium benefit with us .Get upgraded with your account and never miss any benefit updated on your favourite items.",style: GoogleFonts.poppins(fontSize: 13,color: Color(0xff006A4E)),
                        ),
                        onOkButtonPressed: (){
                          Navigator.pushNamed(context, "subscribe");
                        },
                      )
                      );
                      },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Subscribe",style: GoogleFonts.poppins(fontSize: 15,color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/shop.jpg"))
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Top Categories",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.black),),
          Text("SEE ALL",style: GoogleFonts.aBeeZee(fontSize: 14,color:Color(0xff006A4E) ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap:(){
              setState(() {
               i=1;
              });
            },
              child: Container(
              child:  categories(FontAwesomeIcons.tshirt,
               color:(i==1)?Color(0xff99E6DA):Color(0xffE8E8E8),
                ),
              ),
            ),
            SizedBox(width: 15,),
            GestureDetector(
    onTap:() {
      setState(() {
      i=2;
      });
    },
                child: Container(child: categories(FontAwesomeIcons.headphones,color:(i==2)?Color(0xff99E6DA):Color(0xffE8E8E8),
            ),),
    ),
            SizedBox(width: 15,),

            GestureDetector(
                onTap:(){
                  setState(() {
                    i=3;
                  });
                },
                child: Container(child: categories(FontAwesomeIcons.wallet, color: (i==3)?Color(0xff99E6DA):Color(0xffE8E8E8),))),
            SizedBox(width: 15,),
            GestureDetector(
                onTap:(){
                  setState(() {
                    i=4;
                  });
                },
                child: Container(child: categories(FontAwesomeIcons.laptop, color:(i==4)?Color(0xff99E6DA):Color(0xffE8E8E8),))),
            SizedBox(width: 15,),
            GestureDetector(
                onTap:(){
                  setState(() {
                    i=5;
                  });
                },
                child: Container(child: categories(FontAwesomeIcons.childDress, color:(i==5)?Color(0xff99E6DA):Color(0xffE8E8E8),))),
            SizedBox(width: 15,),
            GestureDetector(
                onTap:(){
                  setState(() {
                    i=6;
                  });
                },
                child: Container(child: categories(FontAwesomeIcons.mobile, color: (i==6)?Color(0xff99E6DA):Color(0xffE8E8E8),))),
            SizedBox(width: 15,),
            GestureDetector(
                onTap:(){
                  setState(() {
                    i=7;
                  });
                },
                child: Container(child: categories(Icons.watch, color:(i==7)?Color(0xff99E6DA):Color(0xffE8E8E8),))),
            SizedBox(width: 15,),

          ],
        ),
      ),
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("New Arrivals",style: GoogleFonts.aBeeZee(fontSize: 18,color: Colors.black),),
            Text("VIEW MORE",style: GoogleFonts.aBeeZee(fontSize: 14,color:Color(0xff006A4E) ),
            ),
          ],
        ),
      ),
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          GestureDetector(onTap:(){
            setState(() {
              j==1;
            });
          },
              child: Container(child: arrivals("Pink TOP", "\$150.0", "4.5", "assets/pinks.jpg", (j==1)?Icons.add:Icons.favorite))),
          Hero(tag:'one' ,
              child: arrivals("White Offshoulder", "\$135.5", "3.5", "assets/white.png", (Icons.favorite_border_outlined))),
          arrivals("Brown Jacket", "\$129.0", "4.0", "assets/jacket.png", (Icons.favorite)),
          arrivals("Couple Tshirts", "\$135.0", "4.3", "assets/tshirt.png", (Icons.favorite)),
          arrivals("Men Shirt", "\$180.0", "4.1", "assets/shirt.png", (Icons.favorite_border_outlined)),
          arrivals ("Girls Dress", "\$225.0", "4.3", "assets/dress.png", (Icons.favorite)),
           arrivals("Mens Formal Shirts", "\$150.0", "3.6", "assets/shirt2.jpg",(Icons.favorite_border_outlined)),
          arrivals("Women's Tshirts", "\$145.0", "4.0", "assets/girltshirt.png",(Icons.favorite) ),
        ],
      ),
    ),

  ],
),
        bottomNavigationBar: BottomNavigationBar(
          items: [

            BottomNavigationBarItem(icon: FaIcon( FontAwesomeIcons.home,color: Colors.black,
            ),
              label: '',
              activeIcon: new FaIcon( FontAwesomeIcons.home,color: Color(0xff006A4E),size: 30,),
              backgroundColor: Color(0xffE8E8E8),
            ),
            BottomNavigationBarItem(icon: InkWell(onTap:(){ Navigator.pushNamed(context, "search");},
              child: FaIcon( FontAwesomeIcons.search,color: Colors.black,
              ),
            ),
              label: '',
              activeIcon: new FaIcon( FontAwesomeIcons.search,color: Color(0xff006A4E),size: 30,),
              backgroundColor: Color(0xffE8E8E8),
            ),
            BottomNavigationBarItem(icon: FaIcon( FontAwesomeIcons.shoppingCart,color: Colors.black,),
              activeIcon: new FaIcon( FontAwesomeIcons.shoppingCart,color: Color(0xff006A4E),size: 30,),

              label: '',
              backgroundColor: Color(0xffE8E8E8),
            ),

            BottomNavigationBarItem(icon:const Icon(Icons.person,color: Colors.black,size: 30,),
              backgroundColor: Color(0xffE8E8E8),
              activeIcon: new Icon(Icons.person,color: Color(0xff006A4E),size: 30,),
              label: '',
            ),
          ],
          currentIndex: _selected,

          selectedItemColor:Colors.teal,
          onTap: _onTapped,
        ),
      ),
    );
  }
}
