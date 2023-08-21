import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                border: Border.all(width: 10, color: Colors.green),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.network(
                "https://statusneo.com/wp-content/uploads/2023/02/MicrosoftTeams-image551ad57e01403f080a9df51975ac40b6efba82553c323a742b42b1c71c1e45f1.jpg",
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
                    color: Colors.green,
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
                backgroundColor: Colors.green,
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
