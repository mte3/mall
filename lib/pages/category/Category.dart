import 'package:flutter/cupertino.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(  width: 100,
      height: 100,
      child: Text('分类'),);
  }
}
