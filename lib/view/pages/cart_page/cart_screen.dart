import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_final_project/resources/styles/app_colors.dart';

class Details extends StatefulWidget {
  Details({Key? key}) : super(key: key);

  // Products data;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Details',
          style: TextStyle(
              fontFamily: 'MainFont', fontSize: 35, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 25,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 10, color: AppColors.darkBlue),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                "https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13fGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Info about car :",
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    toggle = !toggle;

                    setState(() {});
                  },
                  icon: toggle
                      ? const Icon(
                    Icons.favorite,
                    color: AppColors.darkBlue,
                  )
                      : const Icon(Icons.favorite_border, color: Colors.grey),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "* Color: ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "Red",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "* Brand name: ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "BMW",
                  // widget.data.brandName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "* ProductCode : ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text(
                  "216044526H56",
                  // widget.data.productCode.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkBlue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Myfont',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
