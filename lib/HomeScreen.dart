import 'package:demo/SOSPostScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 50.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset("assets/Images/user.png"),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Hello Kartik',style: TextStyle(color: Color(0xFF000000),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                                Text('Let\'s see your heart\'s streak today',style: TextStyle(color: Color(0xFF777777),fontFamily: 'Inter',fontWeight: FontWeight.w300,fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                       Image.asset("assets/Images/notification.png")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(18),
                    height: 141,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Color(0xFF664DEF),
                            width: 0.5,
                          ),
                          right: BorderSide(
                            color: Color(0xFF664DEF),
                            width: 0.5,
                          ),
                          bottom: BorderSide(
                            color: Color(0xFF664DEF),
                            width: 0.5,
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18),),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(
                                  0,4
                              ),
                              blurRadius: 4,
                              color: Color(0xFF000000).withOpacity(0.25)
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Text("Emergency help needed?",style: TextStyle(fontFamily: 'Inter',color: Color(0xFF000000),fontWeight: FontWeight.w700,fontSize: 16),),
                        Text("Just hold the button to call",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF000000)),),
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(18)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF000000).withOpacity(0.25),
                              blurRadius: 4,
                              offset: Offset(0,4)
                          )
                        ],
                        border: Border.all(
                            color: Color(0xFF664dEF),
                            width: 0.5
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Images/siren.png"),
                            SizedBox(width: 10,),
                            Text('Risk\nAssesment'),
                          ],
                        ),
                        Image.asset("assets/Images/percentage.png")
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Scheduled Appointment',style: TextStyle(color: Color(0xFF303030),fontWeight: FontWeight.w600,fontSize: 16),),
                      Text('View all',style: TextStyle(color: Color(0xFF5F57EA),fontSize: 12,fontWeight: FontWeight.w300),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 210,
                    width: double.infinity,
                    //padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF6252EC).withOpacity(0.10),
                      borderRadius: BorderRadius.all(Radius.circular(18))
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18),topRight: Radius.circular(18)),
                          ),
                          child: Text('Starts in 10 min',style: TextStyle(
                            color: Color(0xFFF21F61),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Mitr',
                            fontSize: 12
                          ),),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                          child: Image.asset("assets/Images/dr.png")
                         ),
                        Positioned(
                          top: 40.0,
                          left: 130.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Dr. Ashutosh Misra',style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFF000000),fontSize: 20),),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 80.0,
                          right: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 140,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF6252EC).withOpacity(0.10),
                                    borderRadius: BorderRadius.all(Radius.circular(18))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('General Consultation',style: TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF6252EC)
                                    ),),
                                    Text('10:30 AM',style: TextStyle(
                                        fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF6252EC)
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 80.0,
                          right: 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF363184),
                                    // gradient: LinearGradient(
                                    //   begin: Alignment.topLeft,
                                    //     end: Alignment.bottomCenter,
                                    //     colors: [
                                    //       Color(0xFF5F5EA),
                                    //       Color(0xFF363184),
                                    //     ]
                                    // ),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topLeft: Radius.circular(12))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Token No',style: TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white
                                    ),),
                                    Text('5',style: TextStyle(
                                        fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          child: Container(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(18),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Color(0xFFF21F61).withOpacity(0.90)
                            ),
                            child: Text('Pay \u20B9200',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                            ),),
                          ),
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 105.0,
                          child: Text('Pending',style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF5F57EA),
                              fontSize: 10
                          ),),
                        ),

                    ],
                    ),
                  ),

                ],
              ),

              Positioned(
                  top: 130.0,
                  left: 110.0,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SOSPostScreen()),
                      );
                    },
                    child: Image.asset("assets/Images/sos.png"),
                  )
              ),

              Positioned(
                top: 325,
                right: 128.0,
                child: Container(
                  padding: EdgeInsets.all(05),
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(
                        color: Color(0xFF6252EC),
                      )
                  ),
                  child: Row(
                    children: [
                      Text('Calculate',style: TextStyle(color: Color(0xFF6252EC),fontSize: 12,fontWeight: FontWeight.w600),),
                      Icon(Icons.arrow_forward_rounded,color: Color(0xFF6252EC),)
                    ],
                  ),
                ),
              ),

              Positioned(
                  bottom: -10.0,
                  right: 20.0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Colors.white
                    ),
                    child: Container(
                      padding: EdgeInsets.all(05),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(
                            color: Color(0xFF5F57EA),
                            width: 0.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF000000).withOpacity(0.25),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/Images/videocall.png",height: 12,width: 20,),
                          Text('Join Call',style: TextStyle(
                              color: Color(0xFF5F57EA),
                              fontSize: 16,
                              fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
