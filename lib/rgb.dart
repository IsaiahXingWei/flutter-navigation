import 'package:flutter/material.dart';

class RGB extends StatefulWidget {
  const RGB({Key? key}) : super(key: key);

  @override
  State<RGB> createState() => _RGBState();
}

class _RGBState extends State<RGB> {

  double _currentSliderValueRed = 0;
  double _currentSliderValueGreen = 0;
  double _currentSliderValueBlue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Color Slider'),),
        body: Column(
          children: [
            Slider(
              value: _currentSliderValueRed,
              divisions: 255,
              max: 255,
              label: "Red : ${_currentSliderValueRed.round().toString()}",
              onChanged: (double value) {
                setState(() {
                  _currentSliderValueRed = value;
                });
              },
            ),
            Slider(
              value: _currentSliderValueGreen,
              divisions: 255,
              max: 255,
              label: "Green : ${_currentSliderValueGreen.round().toString()}",
              onChanged: (double value) {
                setState(() {
                  _currentSliderValueGreen = value;
                });
              },
            ),
            Slider(
              value: _currentSliderValueBlue,
              divisions: 255,
              max: 255,
              label: "Blue : ${_currentSliderValueBlue.round()}",
              onChanged: (double value) {
                setState(() {
                  _currentSliderValueBlue = value;
                });
              },
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(_currentSliderValueRed.toInt(),
                      _currentSliderValueGreen.toInt(),
                      _currentSliderValueBlue.toInt(),
                      100),
                  shape: BoxShape.circle
              ),
            ),
            GestureDetector(
                onTap: () {
                  navigateToHome(context);
                  showDialog(context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) => AlertDialog(
                        content: Row(
                            children: [
                              const Text("You have chosen "),
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(_currentSliderValueRed.toInt(),
                                        _currentSliderValueGreen.toInt(),
                                        _currentSliderValueBlue.toInt(),
                                        100),
                                    shape: BoxShape.circle
                                ),
                              )
                            ]),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(context, 'OK'), child: const Text('OK'))
                        ],
                      ));
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 30,
                  width: 120,
                  color: Colors.blue,
                  child: const Align(child: Text("Select This Color")),
                )
            )
          ],
        )
    );
  }
  void navigateToHome(BuildContext context,) {
    Navigator.pop(
      context,
      '/home',
    );
  }
}

