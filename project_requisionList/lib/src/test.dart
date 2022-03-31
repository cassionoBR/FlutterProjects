import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:async";

class Post {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"]);
  }
}

Future<Post> pegaPost() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception("Falha na requisição");
  }
}

class testPage extends StatefulWidget {
  @override
  _testPage createState() => _testPage();
}

class _testPage extends State<testPage> {
  Future<Post>? post;

  @override
  void initState() {
    super.initState();

    post = pegaPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina de teste"),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text("${snapshot.data?.title}");
            } else if (snapshot.hasError) {
              throw Exception(snapshot.error);
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
