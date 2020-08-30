import 'package:Navigator/screens/secondpage.dart';
import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'threepage.dart';



class  FirstRoute extends StatefulWidget {
  final String title;

  const FirstRoute({Key key, this.title}) : super(key: key);
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State< FirstRoute> {
 String user;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value){
                  setState(() {
                   user = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: 'Username',
                    hintText: 'Enter Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green[200],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            Container(
              child: TextField(
                onChanged: (value){
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green[200],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                );
              },
              child: Text("เข้าสู่ระบบ"),
              color: Colors.grey[200],
              textColor: Colors.black,
            ),
                 FlatButton(
              onPressed: () {
                //validateTextField(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Threepage()),
                );
              },
              child: Text("สมัครสมาชิก"),
              // color: Colors.blueAccent[200],
              textColor: Colors.black,
            ),

                          
                          
                          
                          ],
                        ),
                      ),
                    );
                  }
                
                  // void validateTextField(BuildContext context) {
                  //   print(user);
                  //   print(password);
                  // }

}



