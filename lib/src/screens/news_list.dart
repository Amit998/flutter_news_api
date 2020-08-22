import 'package:flutter/material.dart';
import 'package:flutter_app_news/src/blocs/stories_bloc.dart';
import '../blocs/stories_provider.dart';


class NewsList extends StatelessWidget {
  Widget build(context) {
    final bloc =StoriesProvider.of(context);
//    Temporary
    bloc.fetchTopIds();

    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: buildList(bloc),
    );
  }
  Widget buildList(StoriesBloc bloc){
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context,AsyncSnapshot<List<int>> snapshot){
        if(!snapshot.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context,int index){
              return Text('${snapshot.data[index]}');
            }
        );
      },
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
