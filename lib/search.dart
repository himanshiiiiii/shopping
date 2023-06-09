import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopping/bottomnavbar.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _isLoading  =false;
  bool click =false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      setState(() {
        _isLoading=true;
      });
    });
  }
  @override

  Widget product(String t1,String t2,String t3,icon,String img) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(

      padding: EdgeInsets.all(5),
      color: Color(0xffE8E8E8),
      // height: 10,
      // width:50 ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(children:[
              // Container(
              //   height: 180,
              //   width: 120,
              //   decoration: BoxDecoration(
              //
              //       image: DecorationImage(
              //           image: AssetImage(img),
              //         fit: BoxFit.fill,
              //       ),
              //   ),
              // ),
              Container(
                width: 200,
                  child: Image(image: AssetImage(img),height: 180,)),
             Padding(
               padding: const EdgeInsets.only(left: 90.0),
               child: GestureDetector(onTap: (){
                 setState(() {
                   click=true;
                 });

               },
                   onDoubleTap: (){
                     setState(() {
                       click=false;
                     });
                   },
                   child: Icon(icon,  color: Color(0xff006A4E))),
             ),
            ]),
          ),
          Text(t1,style:(GoogleFonts.poppins(fontSize: 15,color: Colors.black))),
          Text(t2,style: GoogleFonts.poppins(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w700)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Container(
                height: 25,
                width:25,
                decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  border: Border.all(color: Colors.black,width:0.1 ),


                ),
                child: Icon(Icons.add,color: Colors.black,size: 15,),),
            ],
          ),
        ],

      ),
    ),
  );
  }

  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          color: Colors.white,
          child: _isLoading ? getListItem():getShimmerLoading(),

        ),

    );
  }
 ListView getListItem () {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(

              child: Padding(
                padding: const EdgeInsets.only(left:20.0,top:16,bottom: 16,right: 10),
                child: TextField(
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    fillColor:  Color(0xffE8E8E8),
                    filled: true,
                    hintText: "Search your product...",
                    hintStyle: GoogleFonts.aBeeZee(fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8),
              child: Container(
                height: 40,
                width: 40,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff99E6DA),
                ),
                child: Icon(Icons.sort),
              ),
            )
          ],
        ),
        GridView.count(
          crossAxisCount: 2,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 0.75,

          shrinkWrap: true,
          children: [
            Container(child: product("Pink TOP", "\$150.0", "4.5",(click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/pinks.jpg" )),
            product("White Offshoulder", "\$135.5", "3.5", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/white.png"),
            product("Brown Jacket", "\$129.0", "4.0", (click==true)?Icons.favorite_border_outlined:Icons.favorite, "assets/jacket.png",),
            product("Couple Tshirts", "\$135.0", "4.3", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/tshirt.png", ),
            product("Men Shirt", "\$180.0", "4.1" ,(click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/shirt.png", ),
            product("Girls Dress", "\$225.0", "4.3", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/dress.png", ),
            product("Mens Formal Shirts", "\$150.0", "3.6", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/shirt2.jpg", ),
            product("Women's Tshirts", "\$145.0", "4.0", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/girltshirt.png", ),
          ],
        ) ,

      ],
    );
  }
  Shimmer getShimmerLoading()
  {
    return  Shimmer.fromColors( baseColor: CupertinoColors.extraLightBackgroundGray, highlightColor: CupertinoColors.systemGrey
      ,
      child:ListView(
        children: [
          Row(
            children: [
              Expanded(

                child: Padding(
                  padding: const EdgeInsets.only(left:20.0,top:16,bottom: 16,right: 10),
                  child: TextField(
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      fillColor:  Color(0xffE8E8E8),
                      filled: true,
                      hintText: "Search your product...",
                      hintStyle: GoogleFonts.aBeeZee(fontSize: 15),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff99E6DA),
                  ),
                  child: Icon(Icons.sort),
                ),
              )
            ],
          ),
          GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 0.75,

            shrinkWrap: true,
            children: [
              Container(child: product("Pink TOP", "\$150.0", "4.5",(click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/pinks.jpg" )),
              product("White Offshoulder", "\$135.5", "3.5", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/white.png"),
              product("Brown Jacket", "\$129.0", "4.0", (click==true)?Icons.favorite_border_outlined:Icons.favorite, "assets/jacket.png",),
              product("Couple Tshirts", "\$135.0", "4.3", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/tshirt.png", ),
              product("Men Shirt", "\$180.0", "4.1" ,(click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/shirt.png", ),
              product("Girls Dress", "\$225.0", "4.3", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/dress.png", ),
              product("Mens Formal Shirts", "\$150.0", "3.6", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/shirt2.jpg", ),
              product("Women's Tshirts", "\$145.0", "4.0", (click==true)?Icons.favorite_border_outlined:Icons.favorite,"assets/girltshirt.png", ),
            ],
          ) ,


        ],
      ),
      loop: 10,
    );
  }
}
