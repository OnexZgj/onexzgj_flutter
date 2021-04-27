import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            accountName:
                Text('onexzgj', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text("474835552@qq.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://wx2.sinaimg.cn/mw690/001Pb9yIly3gpw4pg0tdoj61kw1kwx6r02.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[100],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://wx2.sinaimg.cn/mw690/001Pb9yIly3gpw4pg0tdoj61kw1kwx6r02.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
                )),
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
    );
  }
}
