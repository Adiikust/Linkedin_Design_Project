import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:test_1/screens/home_screen.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(


        elevation: 0,
        shadowColor: Colors.blue,


        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back),),

      ),
      endDrawer:  AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.bottom,
              list: [
                BezierCurveSection(
                  start: const Offset(0, 90),
                  top: Offset(screenWidth / 3, 190),
                  end: Offset(screenWidth, 130),
                ),
              ],
            ),
            child: Container(
              height: 300,
              color:  Colors.blue,
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height:48 ,width: 230,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 4.0,
                      )],
                  ),
                  child: TextField(
                    decoration:InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white,width: 3 ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        hintText: 'Write a reply...',
                        hintStyle: const TextStyle(
                            color: Color(0xffBEBEBE),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        )
                    ),
                  ),
                ),
              InkWell(
                onTap: (){},
                  child: const Icon(Icons.emoji_emotions_outlined)),
              InkWell(
                onTap: (){},
                  child: const Icon(Icons.photo_library_outlined)),
              InkWell(
                onTap: (){},
                  child: const Icon(Icons.photo_library_outlined)),
              InkWell(
                onTap: (){
                  Get.to(const HomeScreen());
                },
                  child: const Icon(Icons.send,color: Colors.blue,)),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
