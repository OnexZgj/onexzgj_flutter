import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(Icons.pool, size: 32, color: Colors.red),
            //盒子的背景颜色
            // color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            //限制盒子的大小
            width: 300,
            height: 300,
            //装饰盒子
            decoration: BoxDecoration(
              // color: Colors.deepPurpleAccent,
              image: DecorationImage(
                image: NetworkImage(
                    'https://wx1.sinaimg.cn/large/a2dce2bdly1gpkqwcyk4gj22c0340npd.jpg'),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover,
                //这个东西需要研究一下
                colorFilter: ColorFilter.mode(
                  Colors.indigoAccent[400].withOpacity(0.5),
                  BlendMode.hardLight,
                ),
              ),
              border: Border.all(
                  color: Colors.red, width: 2, style: BorderStyle.solid),
              //圆角
              // borderRadius:BorderRadius.circular(16),
              //阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 16.0,
                  spreadRadius: 9.0,
                )
              ],
              //形状
              shape: BoxShape.circle,
              //渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'onexzgj',
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontStyle: FontStyle.italic,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
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
