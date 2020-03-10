import 'package:anipocket/models/models.dart';
import 'package:anipocket/models/request_type/request_type.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:anipocket/widget/menu.dart';
import 'package:anipocket/widget/preview_list_top.dart';
import 'package:anipocket/widget/preview_most_popular.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AniPocket', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            PreviewMostPopular(),
            PreviewListTop()
          ] //snd
              ),
        ),
      ),
    );
  }
}



class ListTopAnime extends StatefulWidget {
  final Top listanime;

  const ListTopAnime({this.listanime});
  @override
  _ListTopAnimeState createState() => _ListTopAnimeState();
}

class _ListTopAnimeState extends State<ListTopAnime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      //height: 200,
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //Expanded(
          Container(
            height: 230,
            //width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.listanime.imageUrl),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(3, 3))
                ],
                borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
          // ClipRRect(

          //   borderRadius: BorderRadius.circular(10),
          //   child: Image.network(widget.topAnime.imageUrl,),
          // ),

          Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              widget.listanime.title,
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ],
      ),
    );
  }
}
