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
              Icon(Icons.directions_bike,
                  size: 128.0, color: Colors.deepPurple),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // DrawerHeader(
                //     child: Text('header'.toUpperCase()),
                //     decoration: BoxDecoration(
                //       color: Colors.grey[100]
                //     ),
                // ),
                UserAccountsDrawerHeader(
                  accountName: Text('onexzgj',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  accountEmail: Text("474835552@qq.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://wx2.sinaimg.cn/mw690/001Pb9yIly3gpw4pg0tdoj61kw1kwx6r02.jpg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[100],
                    image: DecorationImage(
                      image: NetworkImage('https://wx2.sinaimg.cn/mw690/001Pb9yIly3gpw4pg0tdoj61kw1kwx6r02.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.yellow[400].withOpacity(0.6),
                          BlendMode.hardLight
                      ),
                    )
                  ),
                ),
                ListTile(
                  title: Text("messages", textAlign: TextAlign.right),
                  trailing: Icon(Icons.message, color: Colors.black26),
                ),
                ListTile(
                  title: Text("messages", textAlign: TextAlign.left),
                  leading: Icon(Icons.message, color: Colors.black26),
                ),
                ListTile(
                  title: Text(
                    "messages",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  trailing: Icon(Icons.message, color: Colors.deepPurple),
                ),
              ],
            ),
          )),
    );
  }
}
