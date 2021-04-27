import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(
            Icons.menu
          ),
        ),

        title: Text("onexzgj"),
        //右边的按钮
        actions: [
          IconButton(
              icon: Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              onPressed: () => debugPrint("点击了search"))
        ],
      ),
    );
  }
}
