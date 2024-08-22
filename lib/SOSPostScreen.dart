import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SOSPostScreen extends StatefulWidget {
  const SOSPostScreen({super.key});

  @override
  State<SOSPostScreen> createState() => _SOSPostScreenState();
}

class _SOSPostScreenState extends State<SOSPostScreen> {

  String text = '';
  String subject = '';
  String uri = '';
  String fileName = '';
  List<String> imageNames = [];
  List<String> imagePaths = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top: 10,bottom: 10,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xFFF14336)
                ),
                child: Text('Your SOS request has been raised',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
                textAlign: TextAlign.center,),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                    18
                  )),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xFF664DEF),
                    width: 0.5
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RichText(
                                                text: TextSpan(text: 'Ambulance Arriving in',style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                                color: Color(0xFF282828),
                                              fontFamily: 'Inter'))),
                            RichText(text: TextSpan(text: '  6 Minutes',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF282828),
                                fontFamily: 'Inter'),),),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(02),
                          decoration: BoxDecoration(
                            color: Color(0xFF664DEF),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Icon(Icons.location_on,color: Colors.white,),
                        )
                      ],
                    ),
                    Text('Heading towards to the patient',style: TextStyle(
                      fontFamily: 'Inter',
                      color: Color(0xFF282828),
                      fontWeight: FontWeight.w400,
                      fontSize: 10
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('Doctor is here to help you',style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w600,
                color: Color(0xFF282828),
                fontFamily: 'Inter'
              ),),
              SizedBox(height: 20,),
              Stack(
                children: [
                  Image.asset('assets/Images/d.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 15),
                        padding: EdgeInsets.only(left: 20,right: 20,bottom: 05,top: 05),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFFD9D9D9).withOpacity(0.20)
                        ),
                        child: Text('Dr.Deepindra',style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.flip_camera_ios,color: Colors.white,),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 90.0,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFD9D9D9),
                          child: Icon(Icons.mic),
                        ),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundColor: Color(0xFFD9D9D9),
                          child: Icon(Icons.emergency_recording),
                        ),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(Icons.call_end,color: Colors.white,),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () async{
                            if (!kIsWeb &&
                                (Platform.isMacOS ||
                                    Platform.isLinux ||
                                    Platform.isWindows)) {
                              // Using `package:file_selector` on windows, macos & Linux, since `package:image_picker` is not supported.
                              const XTypeGroup typeGroup = XTypeGroup(
                                label: 'images',
                                extensions: <String>['jpg', 'jpeg', 'png', 'gif'],
                              );
                              final file = await openFile(
                                  acceptedTypeGroups: <XTypeGroup>[typeGroup]);
                              if (file != null) {
                                setState(() {
                                  imagePaths.add(file.path);
                                  imageNames.add(file.name);
                                });
                              }
                            } else {
                              final imagePicker = ImagePicker();
                              final pickedFile = await imagePicker.pickImage(
                                source: ImageSource.gallery,
                              );
                              if (pickedFile != null) {
                                setState(() {
                                  imagePaths.add(pickedFile.path);
                                  imageNames.add(pickedFile.name);
                                });
                              }
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(9)),
                                color: Color(0xFF664DEF),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF000000).withOpacity(0.25),
                                      blurRadius: 2,
                                      offset: Offset(0, 2)
                                  )
                                ]
                            ),
                            child: Image.asset('assets/Images/s.png'),
                          ),
                        ),
                        SizedBox(width: 05,),
                        Text('Share Report',style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFADADAD),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter'
                        ),),
                      ],
                    ),
                   Row(
                     children: [
                       InkWell(
                         onTap: () async{
                           if (!kIsWeb &&
                               (Platform.isMacOS ||
                                   Platform.isLinux ||
                                   Platform.isWindows)) {
                             // Using `package:file_selector` on windows, macos & Linux, since `package:image_picker` is not supported.
                             const XTypeGroup typeGroup = XTypeGroup(
                               label: 'images',
                               extensions: <String>['jpg', 'jpeg', 'png', 'gif'],
                             );
                             final file = await openFile(
                                 acceptedTypeGroups: <XTypeGroup>[typeGroup]);
                             if (file != null) {
                               setState(() {
                                 imagePaths.add(file.path);
                                 imageNames.add(file.name);
                               });
                             }
                           } else {
                             final imagePicker = ImagePicker();
                             final pickedFile = await imagePicker.pickImage(
                               source: ImageSource.gallery,
                             );
                             if (pickedFile != null) {
                               setState(() {
                                 imagePaths.add(pickedFile.path);
                                 imageNames.add(pickedFile.name);
                               });
                             }
                           }
                         },
                         child: Container(
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.all(Radius.circular(9)),
                               color: Color(0xFF664DEF),
                               boxShadow: [
                                 BoxShadow(
                                     color: Color(0xFF000000).withOpacity(0.25),
                                     blurRadius: 2,
                                     offset: Offset(0, 2)
                                 )
                               ]
                           ),
                           child: Image.asset('assets/Images/s.png'),
                         ),
                       ),
                       SizedBox(width: 05,),
                       Text('Share Report',style: TextStyle(
                           fontSize: 12,
                           color: Color(0xFFADADAD),
                           fontWeight: FontWeight.w600,
                           fontFamily: 'Inter'
                       ),),
                     ],
                   )
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
