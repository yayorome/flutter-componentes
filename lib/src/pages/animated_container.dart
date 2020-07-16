import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

double _width = 50;
double _height = 50;
Color _color = Colors.pink;
BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _animate(),
        child: Icon(Icons.stars),
      ),
    );
  }

  void _animate() {
    setState(() {
      Random random = Random();
      _width = random.nextInt(200).toDouble();
      _height = random.nextInt(200).toDouble();

      _color = Color.fromRGBO(
          random.nextInt(250), random.nextInt(250), random.nextInt(250), 1);

      _borderRadius = BorderRadius.circular(random.nextInt(300).toDouble());
    });
  }
}
