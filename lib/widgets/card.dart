import 'package:flutter/material.dart';

import 'package:wpkdr/models/embedpost.dart';
import 'package:wpkdr/widgets/single.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

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
    return 
    Card(
              child: 
              
              ListTile(

                  contentPadding: EdgeInsets.all(10.0),
                  title: new Text(post.title.rendered),
                  // subtitle: new Text(post.excerpt.rendered),
                  subtitle: new Text(post.featuredMediaUrl),
              
                  ),
               
              );
            
             
  }
}
