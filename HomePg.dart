import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceimage,d2;
  @override
  void initState(){
    super.initState();

    setState((){
      diceimage=1;
    }
    );
  }
  void rolldice(){

    int random=(Random().nextInt(6))+1;
    int random2 = (Random().nextInt(6))+1;
    setState(() {
      diceimage=random;
      d2 = random2;
      print(diceimage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
        appBar:AppBar(
          title: Text('Dice Roller Application'),
        ),
        body: Container(
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Row(
                  children: [
                    Image.asset("images/dice_$diceimage.png",
                      width: 200,
                      height: 200,

                    ),
                    Image.asset(
                      "images/dice_$d2.png",
                      width: 200,
                      height: 200,
                    ),
                  ],

                ),


                /*Container(
                  width: MediaQuery.of(context).size.width *0.8,
                  margin: EdgeInsets.only(top:100),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FlatButton(
                      child: Text("Roll"),
                      color: Colors.indigo,
                      padding:
                        EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                      onPressed: () =>rolldice()),
                    ),
                  )*/

                SizedBox(height: 50.0,),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50.0,
                  child: RaisedButton(
                    color: Colors.black54,
                    onPressed: ()=> rolldice(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: Text('Roll',
                  style: TextStyle(color: Colors.white),),),
                )


              ],
            )
          ),
        ),
    );
  }
}
