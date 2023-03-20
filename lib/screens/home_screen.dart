import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
        color: Colors.blue,
        ),
        title: Text("Package",style: TextStyle(
            color: Colors.blue,
            fontSize: 20
        ),),

        elevation: 10.5,
        shadowColor: Colors.blue,


        leading: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_back),),

      ),
      endDrawer: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
           Expanded(
             child: ListView.builder(
               itemCount: 5,
               itemBuilder: (
                 BuildContext context, int index) {
               return  Container(
                 margin: EdgeInsets.all(10),
                 height: 170,
                 width: double.infinity,
                 decoration:  BoxDecoration(
                   color: const Color(0xFFffffff),
                   borderRadius: BorderRadius.circular(10),
                   boxShadow: const [
                     BoxShadow(
                       color: Colors.grey,
                       blurRadius: 20.0, // soften the shadow
                       spreadRadius: 3.0, //extend the shadow
                       offset: Offset(
                         5.0, // Move to right 5  horizontally
                         5.0, // Move to bottom 5 Vertically
                       ),
                     )
                   ],
                 ),
                 child: Row(
                   children: [
                     const SizedBox(width: 2,),
                     Container(
                       height: 165,
                       width: 200,
                       decoration:  BoxDecoration(
                         color:  Colors.blue,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: const [
                           BoxShadow(
                             color: Colors.grey,
                             blurRadius: 10.0, // soften the shadow
                             spreadRadius: 3.1, //extend the shadow
                             offset: Offset(
                               6.2, // Move to right 5  horizontally
                               6.2, // Move to bottom 5 Vertically
                             ),
                           )
                         ],
                       ),
                       child: Center(child:Image.asset("assets/shirt.png",fit: BoxFit.cover),),
                     ),
                     const SizedBox(width: 8,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         const SizedBox(height: 10,),
                         const Text("5 T-Shirts Dry and cleaning(\$60)",
                           style: TextStyle(
                               color: Colors.blue,
                               fontSize: 16,
                               fontWeight: FontWeight.w600
                           ),

                         ),
                         const SizedBox(height: 10,),
                         const Text("You will get\$10 of buy this package"
                           ,style: TextStyle(
                               color: Colors.blue,
                               fontSize: 14,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                         const SizedBox(height: 15,),
                         Row(
                           children: [
                             Column(
                               children: [
                                 Container(
                                   height: 45,
                                   width: 45,
                                   decoration:  BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: Colors.blue,
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.grey,
                                         blurRadius: 10.0, // soften the shadow
                                         spreadRadius: 3.1, //extend the shadow
                                         offset: Offset(
                                           6.2, // Move to right 5  horizontally
                                           6.2, // Move to bottom 5 Vertically
                                         ),
                                       )
                                     ],
                                   ),
                                   child: Center(child: Image.asset('assets/wash.png',fit: BoxFit.cover),),
                                 ),
                                 SizedBox(height: 10,),
                                 const Text("Wash",
                                   style: TextStyle(
                                       color: Colors.blue,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 Container(
                                   height: 45,
                                   width: 45,
                                   decoration:  BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: Colors.blue,
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.grey,
                                         blurRadius: 10.0, // soften the shadow
                                         spreadRadius: 3.1, //extend the shadow
                                         offset: Offset(
                                           6.2, // Move to right 5  horizontally
                                           6.2, // Move to bottom 5 Vertically
                                         ),
                                       )
                                     ],
                                   ),
                                   child: Center(child: Image.asset('assets/shirt.png',fit: BoxFit.cover),),
                                 ),
                                 SizedBox(height: 10,),
                                 const Text("DryCleaning",
                                   style: TextStyle(
                                       color: Colors.blue,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 Container(
                                   height: 45,
                                   width: 45,
                                   decoration:  BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     color: Colors.blue,
                                     boxShadow: const [
                                       BoxShadow(
                                         color: Colors.grey,
                                         blurRadius: 10.0, // soften the shadow
                                         spreadRadius: 3.1, //extend the shadow
                                         offset: Offset(
                                           6.2, // Move to right 5  horizontally
                                           6.2, // Move to bottom 5 Vertically
                                         ),
                                       )
                                     ],
                                   ),
                                   child: Center(child: Image.asset('assets/iron.png',fit: BoxFit.cover,),),
                                 ),
                                 const SizedBox(height: 10,),
                                 const Text("Iron ",
                                   style: TextStyle(
                                       color: Colors.blue,
                                       fontSize: 14,
                                       fontWeight: FontWeight.w400
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         )
                       ],
                     )
                   ],
                 ),
               );
             },),
           )
          ],
        ),
      ),
    );
  }
}
