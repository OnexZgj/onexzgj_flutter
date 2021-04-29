import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BasicDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Row(
        children: [
          Container(
            child: Icon(Icons.pool,size: 32,color: Colors.red),
            //盒子的背景颜色
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            //限制盒子的大小
            width: 90,
            height: 90,
          )
        ],
      ),
    );
  }
}

class RichTextBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'onexzgj',
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontStyle: FontStyle.italic,
                )

            )
          ]
      ),
    );
  }

}



class TextDemo extends StatelessWidget{

  TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _author = "李白";
  final String _title = "将进酒";

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》-- $_author 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      //最后的省略的文本的样式
      overflow: TextOverflow.ellipsis,
    );
  }

}
