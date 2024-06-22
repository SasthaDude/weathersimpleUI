import 'package:flutter/material.dart';
import 'package:weather/WeatherModel.dart';
import 'package:weather/weatherService.dart';

class weatherPage extends StatefulWidget {
  const weatherPage({super.key});

  @override
  State<weatherPage> createState() => _weatherPageState();
}

class _weatherPageState extends State<weatherPage> {

  final _WeatherService = WeatherService("d8a09f73ac82e78c6398b4cba83373c8");
  Weather? _weather;

  _fetchWeather() async{
    String cityName = await _WeatherService.getCurrentCity();
    try{
      final weather = await _WeatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    catch (e){
      print(e);
    }
  }
  
  @override
  void initState(){
    super.initState();
    _fetchWeather();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.cityName ?? "loading city.."),
            SizedBox(height: 50,),
            Text('${_weather?.temperature.round()}°C')
          ],
        ),
      ),
    );
  }
}
