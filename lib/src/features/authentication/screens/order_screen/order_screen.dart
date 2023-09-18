import 'package:flutter/material.dart';
import 'package:wine_monger/src/constants/image_strings.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
   OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shape: const Border(
            bottom: const BorderSide(color: Color(0xffCAE3A8), width: 2)),
        elevation: 2,
        backgroundColor: Color(0xff717F5E),
        title: Center(
          
          child: Text(
            "Orders",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900),
          ),
        ),
        actions: [
           Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              width: 15,
              height: 15,
              child: Image.asset(kbottomNavHome)
              )
          )
        ],
      ),
      

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
      
          children: [
      
            Container(
              height: 35,
              width: double.infinity,
              color: const Color(0xff717F5E),
              child: const Text(" Search Order", style: TextStyle(
                color: Color(0xffF8F8F8),
                fontSize: 18,
                fontWeight: FontWeight.w800
              ),),
            ),

            TextField(
          onChanged: (value) {},
          decoration: const InputDecoration(
          suffixIcon: Icon(Icons.search),
          ),
        ),

             ListView(
            children: [

    Container(
              height: 35,
              width: double.infinity,
              color: Color(0xff717F5E),
              child: Text(" Date ", style: TextStyle(
                color: Color(0xffF8F8F8),
                fontSize: 18,
                fontWeight: FontWeight.w800
              ),),
            ),


  ]
)

      
          ],
        ),
      ),
    );
  }
}