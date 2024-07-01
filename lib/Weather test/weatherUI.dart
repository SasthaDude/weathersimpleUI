import 'package:flutter/material.dart';
import 'package:weather/Weather%20test/weatherclass.dart';

class WeatherUI extends StatefulWidget {
  @override
  _WeatherUIState createState() => _WeatherUIState();
}

class _WeatherUIState extends State<WeatherUI> {
  final WeatherService _weatherService = WeatherService();
  final TextEditingController _controller = TextEditingController();
  dynamic _weatherData;
  bool _isLoading = false;

  void _fetchWeather() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final data = await _weatherService.getWeather(_controller.text);
      setState(() {
        _weatherData = data;
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error fetching weather data')));
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Enter city name',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _fetchWeather,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent.shade100,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              textStyle: TextStyle(
                fontSize: 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text("SEARCH"),
          ),
          SizedBox(height: 20),
          _isLoading
              ? CircularProgressIndicator()
              : _weatherData != null
                  ? Column(
                      children: [
                        Text(
                          '${_weatherData!['name']}',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${_weatherData!['main']['temp']}°C',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${_weatherData!['weather'][0]['description']}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Humidity: ${_weatherData!['main']['humidity']}%',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          'Wind Speed: ${_weatherData!['wind']['speed']} m/s',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    )
                  : Text(
                      'Enter a city to get weather data',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
        ],
      ),
    );
  }
}
