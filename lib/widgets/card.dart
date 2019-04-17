import 'package:flutter/material.dart';

import 'package:wpkdr/models/embedpost.dart';
import 'package:wpkdr/widgets/single.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'package:intl/intl.dart';


class PostCard extends StatefulWidget {
  final Post post;

  PostCard(this.post);

  @override
  _PostCardState createState() => _PostCardState(post);
}

class _PostCardState extends State<PostCard> {
  Post post;

  _PostCardState(this.post);

  @override
  Widget build(BuildContext context) {
    return makeCard(post);
    // Card(
    //           child: 
              
    //           ListTile(

    //               contentPadding: EdgeInsets.all(10.0),
    //               title: new Text(post.title.rendered),
    //               // subtitle: new Text(post.excerpt.rendered),
    //               subtitle: new Text(post.featuredMediaUrl),
              
    //               ),
               
    //           );
            
             
  }

  ListTile makeListTile(Post post) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: DateFormat('MM-dd – kk:mm').format(post.date).toString(),
            )
            // Icon(Icons.autorenew, color: Colors.white),
          ),
          title: Text(
            post.title.rendered,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    // tag: 'hero',
                    child: Text(post.excerpt.rendered,style: TextStyle(color: Colors.white)),
                  )
                  ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(post.author,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SinglePost(post: post)));
          },
        );

   Card makeCard(Post post) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(post),
          ),
        );
  
   
}
