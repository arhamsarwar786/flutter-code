import 'dart:convert';

import 'package:http/http.dart' as http;

import 'env.dart';
class ApiManager{
  static const BaseURL = "https://api.openweathermap.org/data/2.5/weather";



  static fetchWeather(city)async{
   try {
      var response =  await http.get(Uri.parse("$BaseURL?q=$city&appid=$API_KEY"));
    var data = jsonDecode(response.body);
    return data;
   } catch (e) {
     print(e);
   }
  }
}