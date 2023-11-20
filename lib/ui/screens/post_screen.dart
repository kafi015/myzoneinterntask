import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myzoneinterntask/Data/Model/post_model.dart';
import 'package:myzoneinterntask/ui/screens/comment_screen.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  PostModel _postModel = PostModel();
  bool inProgress = false;

  Future<void> getPost()
  async {
    inProgress = true;
    setState(() {});

    final http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {
        "Content-Type": "application/json",
      },
    );
    _postModel = PostModel.fromJson(jsonDecode(response.body));
   // log(response.body);

    log(_postModel.data?.length.toString() ?? '0');

    inProgress = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPost();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Post'),
      ),

      body: inProgress? Center(child: CircularProgressIndicator(),):ListView.builder(
        itemCount: _postModel.data?.length ?? 0,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.blueGrey,
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CommentScreen(postId: _postModel.data?[index].id ?? 0, userID: _postModel.data?[index].userId ?? 0,
                  title: _postModel.data?[index].title.toString() ?? '',
                    body: _postModel.data?[index].body.toString() ?? '',
                  )));
                },
                leading: Text(_postModel.data?[index].userId.toString() ?? '',style: TextStyle(fontSize: 25),),
                title: Text(_postModel.data?[index].title.toString() ?? '',style: TextStyle(fontSize: 22),),
                subtitle: Text(_postModel.data?[index].body.toString() ?? '',style: TextStyle(fontSize: 22),),

              ),
            ),
          );
        },
      ),
    );
  }
}
