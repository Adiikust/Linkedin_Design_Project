import 'package:flutter/material.dart';
import 'package:get/get.dart';
class DaysWidgets extends StatelessWidget {
  String title;
  final Color color;
  String title1;
  String title2;
   DaysWidgets({Key? key,
    required this.title,
    required this.title1,
    required this.title2,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*.100,
      width: Get.width *.180,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Colors.white24,
              blurRadius: 10,
              offset: Offset(0, 5),
              spreadRadius: 0.1,
              blurStyle: BlurStyle.normal // set blur style
          ),
        ],
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: Get.height*.040,
                width: Get.width *.180,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius:const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)
                  ),
                ),
                child: Center(
                  child: Text(title,
                    style: const TextStyle(color: Colors.blue,fontSize: 20),
                  ),
                ),

              ),
            ],
          ),
          Container(
            height: Get.height*.060,
            width: Get.width *.180,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 8,),
                 Text(title1,
                  style:const TextStyle(color: Colors.grey,fontSize: 13),
                ),
                Text(title2,
                  style:const TextStyle(color: Colors.grey,fontSize: 13),
                ),
              ],
            ),

          ),
        ],
      ),

    );
  }
}
