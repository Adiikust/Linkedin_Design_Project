import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/days_widgets.dart';
import '../widgets/dropdown_button.dart';
import 'chat_screen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isSwitched = false;
  int dietPosition = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('PickUp date',
            style: TextStyle(color: Colors.blue,fontSize: 25),),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.blue,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.blue

          ),
          leading: IconButton(onPressed: (){},icon:const Icon(Icons.arrow_back),),

        ),
        endDrawer:  AppBar(
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text('When would you like your pickup?',
                   style: TextStyle(
                   color: Colors.grey,
                   fontSize: 20,
                 ),),
                 SizedBox(width: Get.width*.020,),
                 IconButton(onPressed: (){},
                     icon: const Icon(Icons.calendar_month,color: Colors.blue,))
               ],
             ),

              SizedBox(
                height: Get.height*.100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.grey,),
                    const SizedBox(width: 18,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.green,),
                    const SizedBox(width: 18,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.white,),
                    const SizedBox(width: 18,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.red,),
                    const SizedBox(width: 18,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.red,),
                    const SizedBox(width: 8,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.red,),
                    const SizedBox(width: 8,),
                    DaysWidgets(
                      title: 'Fri',
                      title1: '25 jun',
                      title2: 'Yesterday',
                      color: Colors.red,),
                  ],
                )
              ),
               SizedBox(height: Get.height*.030,),
              const Text('available time slots',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),),
              Padding(
                  padding: const EdgeInsets.only(right: 10,top:10),
                  child:SizedBox(
                    height: 150,
                    child: GridView.builder(
                        itemCount: 5,
                        itemBuilder: (context ,index){
                          bool isSelect=(index == dietPosition);
                          return  InkWell(
                            onTap: (){
                              setState(() {
                                dietPosition=index;
                              });
                            },
                            child: Container(
                              margin:const EdgeInsets.only(left: 10),
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 10,
                                      offset: Offset(0, 5),
                                      spreadRadius: 0.1,

                                      blurStyle: BlurStyle.normal // set blur style
                                  ),
                                ],
                                color: isSelect ? Colors.blue:Colors.white,

                                borderRadius: const BorderRadius.all(
                                    Radius.circular(6)),
                              ),
                              child: const Center(
                                child: Text('01:00 am',style:TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14,),),
                              ),
                            ),
                          );
                        },
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1/.4,
                      ),
                    ),
                  ),
              ),

              Container(
                margin:const EdgeInsets.only(left: 10),
                height: 40,
                width: 400,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                        spreadRadius: 0.1,

                        blurStyle: BlurStyle.normal // set blur style
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                      Radius.circular(6)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const Text('Repeat Pickup',
                        style:TextStyle(
                        color: Colors.black26,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            // print(isSwitched);
                          });
                        },
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Get.height*.030,),
              const Text('How Often Repeat',
                style:TextStyle(
                  color: Colors.black26,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: Get.height*.010,),
              const DropDownButton(),
              SizedBox(height: Get.height*.020,),
              SizedBox(height: Get.height*.010,),
              const DropDownButton(),
              SizedBox(height: Get.height*.030,),
              GestureDetector(
                onTap: (){
                  Get.to(const ChatScreen());
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:const Center(
                    child: Text('Continue',
                      style:TextStyle(
                        color: Colors.black26,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
