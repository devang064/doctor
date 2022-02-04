import 'package:doctor/page3.dart';
import 'package:doctor/page5.dart';
import 'package:flutter/material.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  _home1State createState() => _home1State();
}

class _home1State extends State<home1> {
  int selected = 0;
  Widget list (dynamic icon,String text, int index) {
    return ListTile(
      onTap:  () {
        setState(() {
          selected = index;
        });
      },
       leading: Icon(icon),
      title: Text(text,style: TextStyle(fontFamily: "Montserrat Medium"),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: (Text("Home", style: TextStyle(color: Colors.black))),
        backgroundColor: (Colors.transparent),
        elevation: 0.0,
        leading: IconButton(
        icon: Icon(Icons.menu_outlined ,color: Colors.black,),
    onPressed: () => Scaffold.of(context).openDrawer()),
      ),
    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFF2492EC),
          ),
          child: ListTile(
       //     leading:Image.asset("assets/Image/img.png"),
          ),
        ),
        list(Icons.home_filled, "Home", 1),
        list(Icons.headset_mic_outlined, "Contact Us", 2),
        list(Icons.announcement, "About Us", 2),
        list(Icons.question_answer_outlined, "FAQ's", 2),

      ],
    ),
    ),
    );
  }
}
