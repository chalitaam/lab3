import 'package:flutter/material.dart';
import 'four.dart';
class Secondpage extends StatefulWidget {
  final String title;

  const Secondpage({Key key, this.title}) : super(key: key);
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าหลัก'),
      ),
       body: Center(
        child: Column(
          children: [
           
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.settings, color: Colors.black),
                FlatButton(
                  onPressed: () {
                    //validateTextField(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourPage()),
                    );
                  },
                  child: Text("ตั้งค่าข้อมูลยา",),
                  textColor: Colors.black,
                  // fontSize:20.0,
                ),
              ],
            ),
        
        
        ],
      )),
    );
  }
}
