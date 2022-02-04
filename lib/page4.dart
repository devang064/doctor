import 'package:doctor/page3.dart';
import 'package:doctor/page5.dart';
import 'package:doctor/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
class p4 extends StatefulWidget {
  const p4({Key? key}) : super(key: key);

  @override
  _p3State createState() => _p3State();
}

class _p3State extends State<p4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(centerTitle: true,title: ( const Text("Login",style: TextStyle(color: Colors.black,fontFamily: "Montserrat SemiBold"))),
        backgroundColor: (Colors.transparent),
          elevation: 0.0,
        leading: IconButton(onPressed: () { Navigator.pop(context,MaterialPageRoute(builder: (builder)=>const p3()),); }, icon:const Icon( Icons.arrow_back,color: Colors.black,)),),
     body:
      Padding(padding: const EdgeInsets.only(left:16 ,right:16 ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 54,),
          Container(
            child: Column(
           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
          Text("Enter",style: TextStyle(fontSize: 28,fontFamily: "Montserrat "),),
          Text("Your Number",style: TextStyle(fontSize: 28,fontFamily: "Montserrat "),),
        ],  ),),
          const SizedBox(height: 7,),
          const Text('you will receive 6 digit verification code',style: TextStyle(fontSize: 15,color: Colors.black26,fontFamily: "Montserrat"),textAlign: TextAlign.start,),
            const SizedBox(
              height: 35.47,
            ),
            const Text("Phone Number",style:  TextStyle(fontSize:18,color: Colors.black12,fontFamily: "Montserrat" ,),),
           const SizedBox(height: 49,
             child: TextField(
                 keyboardType: TextInputType.number,
                 textAlign: TextAlign.start
             ),
           ),
            const SizedBox(height: 25,),
            Row(
              children: [
                Expanded(
                  child:
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const p5()));
                    }, height: 49,
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius. circular(10)),
                    child: const Text("Get OTP",style: TextStyle(color: Colors.white,fontFamily: "Montserrat SemiBold")),
                  ),

                ),
              ],
            ),
            const SizedBox(height: 35,),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: const [
               Text("OR",style: TextStyle(color: Colors.black12),),
             ],
            ) ,
            const SizedBox(height: 16,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtAAs65FYEOv0anNZoMmOhDEpKuwUDTRiCRQ&usqp=CAU"),
                ),
                Padding(padding: EdgeInsets.only(left: 25)),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://i0.wp.com/potsandpansbyccg.com/wp-content/uploads/2020/10/apple-logo.jpg?ssl=1"),
                ),
                Padding(padding: EdgeInsets.only(right: 25)),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://blog.hubspot.com/hubfs/image8-2.jpg"),
                ),
              ],
            ),
            Expanded(child: Padding(
              padding:  const EdgeInsets.only(bottom: 20),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Row(
                  children: [
                    const Text( "Don’t have an account?",style: TextStyle(color: Colors.black26,fontFamily: "Montserrat SemiBold"),),

                TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const p6()));}, child: const Text( "Sign up",style: TextStyle(color: Colors.blue,fontFamily: "Montserrat SemiBold"),),)
                  ],
                ),
              ],
              ),
            ))
          ],
        ),
      ),
 
    );
  }
}
