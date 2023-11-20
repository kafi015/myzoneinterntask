
class CommentModel {
  String? status;
  List<CommentData>? data;

  CommentModel({this.status, this.data});

  CommentModel.fromJson(List<dynamic> json) {

    data = <CommentData>[];
    for (var v in json) {
      data!.add(CommentData.fromJson(v));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CommentData {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommentData({this.postId, this.id, this.name, this.email, this.body});

  CommentData.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = this.postId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}
