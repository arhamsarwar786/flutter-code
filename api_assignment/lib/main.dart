import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
main() {
  runApp(weath());
}

class weath extends StatelessWidget {
  const weath({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: weather(),
    );
  }
}

class weather extends StatelessWidget {
  const weather({super.key});
  getweather()async{
    var data=await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=London&appid=f15ba4d666f8b27fb3dfff4e3a4c5bf5"));
    var finaldata=jsonDecode(data.body);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/sun.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
body: Padding(
  padding: const EdgeInsets.only(top: 50),
  child:   Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
    children: [
  
      Text("City", style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold)),
  
      SizedBox(height:20),
  
      Text("Temperature",  style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
  
      SizedBox(height:150),
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.center,
  
        children: [
  
        Column(children: [
Text("humidity",style: TextStyle(color: Colors.white,)),
SizedBox(height: 5),
Text("humidity",style: TextStyle(color: Colors.white,)),
        ],),
  
        SizedBox(width: 10),
  
         Column(children: [
Text("humidity",style: TextStyle(color: Colors.white,)),
SizedBox(height: 5),
Text("humidity",style: TextStyle(color: Colors.white,)),
        ],),
  
        SizedBox(width: 10),
  
         Column(children: [
Text("humidity",style: TextStyle(color: Colors.white,)),
SizedBox(height: 5),
Text("humidity",style: TextStyle(color: Colors.white,)),
        ],),
  
        SizedBox(width: 10),
  
        Column(children: [
Text("humidity",style: TextStyle(color: Colors.white,)),
SizedBox(height: 5),
Text("humidity",style: TextStyle(color: Colors.white,)),
        ],),
  
        SizedBox(width: 10),
  
         Column(children: [
Text("humidity",style: TextStyle(color: Colors.white,)),
SizedBox(height: 5),
Text("humidity",style: TextStyle(color: Colors.white,)),
        ],),
  
      ],)
      
  
  
  
  ],),
),
      ),
    );
  }
}
