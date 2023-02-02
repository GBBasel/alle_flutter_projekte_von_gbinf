import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/grumpy_cat.jpg'),
            ),
            Text(
              'Grumpy Cat',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'GUTE LAUNE VERBREITER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.lightBlue.shade100,
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              child: Divider(color: Colors.lightBlue.shade100),
              width: 150,
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                      Icons.phone_outlined,
                      color: Colors.lightBlue.shade900,
                    ),
                    title: Text(
                      '+41 777 77 77',
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                      ),
                    ))),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.lightBlue.shade900,
                    ),
                    title: Text(
                      'grumpy@miau.ch',
                      style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                      ),
                    )))
          ],
        )),
      ),
    );
  }
}
