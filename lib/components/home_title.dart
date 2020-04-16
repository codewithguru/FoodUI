import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatefulWidget{
  String text;
  HomeTitle({@required this.text});
  @override
  _HomeTitleState createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold),),
          Text("See all",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey.shade500),),
        ],
      ),
    );
  }
}