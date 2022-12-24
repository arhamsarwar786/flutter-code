import 'package:api_assignment/controller/api_manager.dart';
import 'package:api_assignment/model/weather_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  WeatherModel? weatherData;

  getWeather() async {
   var data = await ApiManager.fetchWeather("lahore");
  weatherData = WeatherModel.fromJson(data);
  //  weatherData = data;
   setState(() {
     
   });
   print(weatherData);
  }

  @override
  void initState() {  
    super.initState();
    getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/sun.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          getWeather();
        }),
        backgroundColor: Colors.transparent,
        body: weatherData == null ? CircularProgressIndicator.adaptive() : Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${weatherData}"),
              Text("${weatherData!.name}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("Temperature ${weatherData!.main!.temp! - 273}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 5),
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 5),
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 5),
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 5),
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      SizedBox(height: 5),
                      Text("humidity",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
