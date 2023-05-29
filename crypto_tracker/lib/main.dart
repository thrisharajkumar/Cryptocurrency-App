import 'package:flutter/material.dart';

class CryptoTrackerApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Crypto Tracker',
      theme: ThemeData(
        primarySwatch:  Colors.blue,
        ),
        home: CryptoListScreen();
    );
  }
}

class CryptoListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title : Text('Crypto Trcaker'),
    ),
    body: Container(
      child: Center(
        child: Text('Crypto List'),
      ),
    ),
    );
  }
}

/*This code sets up the basic structure of your Flutter app, with a CryptoTrackerApp widget as the entry point and a CryptoListScreen widget as the home screen.*/
