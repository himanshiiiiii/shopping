import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
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
    return Scaffold(

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



    );
  }
}







