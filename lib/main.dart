import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Flut',
        home: Scaffold(
          appBar: AppBar(
            title: Text("LOGIN PAGE"),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent
            ),
            child: Container(
              // Isi Child : Container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 18.0,
                      color: Colors.transparent.withOpacity(.5),
                      spreadRadius: 12.5),
                ]),
            margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 45, top: 15),
                    child: Column(
                    children: <Widget>[
                      Image.asset('assets/user.png', width: 99, height: 45),
                        Text(
                        "LOGIN",
                          style: TextStyle(
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 19,
                          
                          fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
                      child: Column(
                        children: <Widget>[
                    Text("EMAIL"),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Icon(Icons.message),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28))),
                            )),
                    Text("PASSWORD"),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.message),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28))),
                            )),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.blue,
                        textColor: Colors.white,
                          child: Text('Sign In'),
                          onPressed: () {},
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.black12,
                        textColor: Colors.white,
                          child: Text('Forgot Password'),
                          onPressed: () {},
                    )],
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}