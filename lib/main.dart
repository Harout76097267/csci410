
import 'package:flutter/material.dart';

void main() {
  runApp(UnitConversionApp());
}

class UnitConversionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Conversion App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategorySelectionPage(),
    );
  }
}

class CategorySelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Conversion Category'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/main_img.png'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => USDtoLBPConversionPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Text('Currency Conversion'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LengthConversionPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                ),
                child: Text('Length Conversion'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TemperatureConversionPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text('Temperature Conversion'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeightConversionPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                child: Text('Weight Conversion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LengthConversionPage extends StatefulWidget {
  @override
  _LengthConversionPageState createState() => _LengthConversionPageState();
}

class _LengthConversionPageState extends State<LengthConversionPage> {
  double _inputValue = 0.0;
  double _outputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length Conversion'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/lenght_img.png'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Enter Length'),
              ),
              SizedBox(height: 100.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Perform length conversion logic here
                    _outputValue = _inputValue * 0.3048; // Convert feet to meters as an example
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent, // Change the color of the Convert button
                ),
                child: Text('Convert'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Result: $_outputValue m',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TemperatureConversionPage extends StatefulWidget {
  @override
  _TemperatureConversionPageState createState() => _TemperatureConversionPageState();
}

class _TemperatureConversionPageState extends State<TemperatureConversionPage> {
  double _inputValue = 0.0;
  double _outputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Conversion'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/temp2_img.png'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Enter Temperature in Fahrenheit'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Perform temperature conversion logic here
                    _outputValue = (_inputValue - 32) * (5 / 9); // Convert Fahrenheit to Celsius as an example
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Change the color of the Convert button
                ),
                child: Text('Convert'),
              ),
              SizedBox(height: 20.0),
              Text(
                '$_outputValue Degree Celsius',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class USDtoLBPConversionPage extends StatefulWidget {
  @override
  _USDtoLBPConversionPageState createState() => _USDtoLBPConversionPageState();
}

class _USDtoLBPConversionPageState extends State<USDtoLBPConversionPage> {
  double _inputValue = 0.0;
  double _outputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USD to LBP Conversion'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Usd_Lbp_img.webp'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Enter Value in USD'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Perform conversion logic here
                    _outputValue = _inputValue * 89500; // Convert USD to LBP as an example
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Change the color of the Convert button
                ),
                child: Text('Convert'),
              ),
              SizedBox(height: 20.0),
              Text(
                ' $_outputValue LBP ',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeightConversionPage extends StatefulWidget {
  @override
  _WeightConversionPageState createState() => _WeightConversionPageState();
}

class _WeightConversionPageState extends State<WeightConversionPage> {
  double _inputValue = 0.0;
  double _outputValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kg to pound Conversion'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weight2_img.png'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(labelText: 'Enter the Weight in KiloGram'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Perform conversion logic here
                    _outputValue = _inputValue * 2.20462; // Convert kilogram to pound as an example
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Change the color of the Convert button
                ),
                child: Text('Convert'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Result: $_outputValue Pound',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}