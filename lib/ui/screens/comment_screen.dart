import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myzoneinterntask/Data/Model/comment_model.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen(
      {super.key,
      required this.postId,
      required this.userID,
      required this.title,
      required this.body});
  final int postId;
  final int userID;
  final String title;
  final String body;

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool inProgress = false;

  CommentModel _commentModel = CommentModel();
  Future<void> getPostComment(int postId) async {
    inProgress = true;
    setState(() {});

    final http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId/comments'),
      headers: {
        "Content-Type": "application/json",
      },
    );
    _commentModel = CommentModel.fromJson(jsonDecode(response.body));
    // log(response.body);

    log(_commentModel.data?.length.toString() ?? '0');

    inProgress = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostComment(widget.postId);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Text(
                  'User: ${widget.userID.toString()}\n Post: ${widget.postId.toString()}',
                  style: TextStyle(fontSize: 25),
                ),
                title: Text(
                  widget.title ?? '',
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  widget.body ?? '',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Text(
              "Comments",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
            ),
            Expanded(
                child: inProgress? Center(child: CircularProgressIndicator(),):ListView.builder(
                  itemCount: _commentModel.data?.length ?? 0,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.blueGrey,
                        child: ListTile(
                          leading: Text(_commentModel.data?[index].postId.toString() ?? '',style: TextStyle(fontSize: 25),),
                          title: Text(_commentModel.data?[index].name.toString() ?? '',style: TextStyle(fontSize: 22),),
                          subtitle: Text('${_commentModel.data?[index].email.toString()}\n\n${_commentModel.data?[index].body.toString()}',style: TextStyle(fontSize: 22),),

                        ),
                      ),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
