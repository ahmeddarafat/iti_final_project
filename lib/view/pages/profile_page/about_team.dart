import 'package:flutter/material.dart';

import 'profile.dart';


class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "About Team",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
                (route) => true);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Center(child: Text("Made By :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
          SizedBox(height: 20,),

          ListTile(
            title: Text(
              "Eng: Ahmed Arafat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.person),
            shape: RoundedRectangleBorder(
              //<-- SEE HERE
              side: BorderSide(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20,),

          ListTile(
            title: Text(
              "Eng: Abd Elhady Alaa",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.person),
            shape: RoundedRectangleBorder(
              //<-- SEE HERE
              side: BorderSide(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20,),

          ListTile(
            title: Text(
              "Eng: Manar Elmetwally",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.person),
            shape: RoundedRectangleBorder(
              //<-- SEE HERE
              side: BorderSide(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20,),

          ListTile(
            title: Text(
              "Eng: Roaa Badawy",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.person),
            shape: RoundedRectangleBorder(
              //<-- SEE HERE
              side: BorderSide(width: 2, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Thanks for your efforts.....",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Expanded(child: Text("With best wishes to all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
            ],
          )


        ],
      ),
    );
  }
}
