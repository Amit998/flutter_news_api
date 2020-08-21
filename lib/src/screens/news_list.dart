import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: Text('Show a list'),
    );
  }
  
}
//  Widget buildList(){
//    return ListView.builder(
//      itemCount: 1000,
//      itemBuilder: (context,int index){
//        return FutureBuilder(
//            future: getFuture(),
//            builder: (context,snapshot){
//            return Container(
//              height:80,
//              child: snapshot.hasData ? Text('Text visible $index') : Text('You Cant see me $index'),
//
//            );
//          },
//        );
//      },
//    );
//  }
//  getFuture(){
//    return Future.delayed(
//      Duration(seconds: 2),
//        () => 'hi'
//    );
//  }
//}
