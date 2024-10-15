import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/strings.dart';

class EditProfilePageScreen extends StatefulWidget {
  const EditProfilePageScreen({super.key});

  @override
  State<EditProfilePageScreen> createState() => _EditProfilePageScreenState();
}

class _EditProfilePageScreenState extends State<EditProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(color: Colors.redAccent),
            ),
            Container(
              margin: EdgeInsets.only(top: 30 ,left: 20,right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      Spacer(),
                      Text("Edite Profile",style: TextStyle(color: Colors.white,fontSize: 25),),
                      Spacer(),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
                        child: CircleAvatar(
                          radius: 50.0, // Adjust the radius for size
                          backgroundColor: Colors.grey[200], // Optional background color
                          child:ClipOval(
                            child: Image.asset(
                                iconAndImagesPath['placeholder']!), // Your local image path

                          ),
                        ),
                      ),
                       Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Change the  Profile",style: TextStyle(color: Colors.black),),
                        ),

                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.6,left: 20,right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                       child: TextField(
                         style: TextStyle(
                         color: Colors.black,
                       ),
                         decoration: InputDecoration(
                           hintText: "Username",
                           hintStyle: TextStyle(color: Colors.black54),
                         ),
                
                       ),
                      ),
                    ),
                    Text("Email",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                
                        ),
                      ),
                    ),
                    Text("Phone Number",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                
                        ),
                      ),
                    ),
                    Text("Password",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black54),
                          ),
                
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ), ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                            child: Text("Update",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),

      ),
    );
  }
}
