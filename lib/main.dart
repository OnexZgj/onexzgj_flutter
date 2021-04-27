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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
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
          bottom: TabBar(
            unselectedLabelColor: Colors.deepPurple,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.local_florist, size: 128.0, color: Colors.deepPurple),
            Icon(Icons.change_history, size: 128.0, color: Colors.deepPurple),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}
