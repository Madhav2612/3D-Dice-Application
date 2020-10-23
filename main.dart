import 'package:flutter/material.dart';
import 'package:flutter_dice_app/HomePg.dart';

void main()=>runApp(BRPApp());

class BRPApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"dice roller app",
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}