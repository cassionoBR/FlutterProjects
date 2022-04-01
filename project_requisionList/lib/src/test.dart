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

Future<List<Post>> pegaPost() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if (response.statusCode == 200) {
    return parsePost(response.body);
  } else {
    throw Exception("Falha na requisição");
  }
}

List<Post> parsePost(String responseBody) {
  var parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}

class testPage extends StatefulWidget {
  @override
  _testPage createState() => _testPage();
}

class PostList extends StatelessWidget {
  final List<Post>? posts;

  PostList({this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts?.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Icon(Icons.abc),
              title: Text("${posts?[index].title}"),
              subtitle: Text("${posts?[index].body}"));
        });
  }
}

class _testPage extends State<testPage> {
  Future<List<Post>>? posts;

  @override
  void initState() {
    super.initState();

    posts = pegaPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina de teste"),
      ),
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: posts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PostList(posts: snapshot.data);
            }

            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
