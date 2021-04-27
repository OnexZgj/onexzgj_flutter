import 'package:flutter/material.dart';
import '../model/post.dart';

class Home extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(posts[index].author, style: Theme.of(context).textTheme.subhead),
          //相当于是一个占位的View
          // SizedBox(height: 5.0),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Onexzgj flutter'),
      ),
      body: ListView.builder(
        itemBuilder: _itemBuilder,
        itemCount: posts.length, //一定要指定这个数量，不然会出现显示半个屏幕
      ),
    );
  }
}