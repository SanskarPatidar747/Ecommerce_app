import 'package:flutter/material.dart';

import '../Constants/strings.dart';
import 'edit_profilepage_screen.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
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
                      Spacer(),
                    Text("Profile",style: TextStyle(color: Colors.white,fontSize: 25),),
                      Spacer(),
                      Icon(Icons.notifications_none_outlined,color: Colors.white,size: 30,)
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
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfilePageScreen(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ), ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Edit Profile",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                     Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Mini Headline",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Treanding",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Today",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Content",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border_outlined,color: Colors.black,size: 25,),
                        SizedBox(width: 5,),
                        Text("Favourite",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8,bottom: 8),
                    child: Row(
                      children: [
                        Icon(Icons.save_alt_outlined,color: Colors.black,size: 25,),
                        SizedBox(width: 5,),
                        Text("Download",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Preferences",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(Icons.language,color: Colors.black,size: 25,),
                        SizedBox(width: 5,),
                        Text("Language",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8),
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode_outlined,color: Colors.black,size: 25,),
                        SizedBox(width: 5,),
                        Text("Darkmode",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7,left: 8,right: 8,bottom: 8),
                    child: Row(
                      children: [
                        Icon(Icons.wifi,color: Colors.black,size: 25,),
                        SizedBox(width: 5,),
                        Text("Only Download by wifi",style: TextStyle(color: Colors.black,fontSize: 18),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,)
                      ],
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}
