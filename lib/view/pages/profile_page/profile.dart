import 'package:flutter/material.dart';
import 'package:iti_final_project/view/pages/profile_page/about_app.dart';

import 'about_team.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://www.befunky.com/images/prismic/82e0e255-17f9-41e0-85f1-210163b0ea34_hero-blur-image-3.jpg?auto=avif,webp&format=jpg&width=896",
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Car lover",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Car lover",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TeamScreen()));
          },
            title: Text("About Team"),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
            leading: Icon(Icons.person),
            shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2,
              color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),

          ),
          SizedBox(height: 20,),

          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutAppScreen()));
            },
            title: Text("About App"),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
            leading: Icon(Icons.touch_app_outlined),
            shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2,
              color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),

          ),
          SizedBox(height: 20,),

          ListTile(
            onTap: (){
              //put here Login Screen

              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>()));
            },
            title: Text("Log Out"),
            trailing:Icon(Icons.arrow_forward_ios_sharp),
            leading: Icon(Icons.logout),
            shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2,
              color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),

          ),
        ],
      ),
    );
  }
}
