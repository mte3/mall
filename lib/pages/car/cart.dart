import 'package:flutter/cupertino.dart';

class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Container(  width: 100,
      height: 100,
      child: Text('购物城'),);
  }
}
