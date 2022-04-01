import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "dart:convert";
import "dart:async";

class Photo {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"]);
  }
}

Future<List<Photo>> getPhoto() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

  if (response.statusCode == 200) {
    return parsePhoto(response.body);
  } else {
    throw Exception("Error na requisição");
  }
}

List<Photo> parsePhoto(String response) {
  var parsed = jsonDecode(response).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

class PhotoList extends StatelessWidget {
  final List<Photo>? posts;

  PhotoList({this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts?.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: const Icon(Icons.photo),
              title: Text("${posts?[index].title}"),
              subtitle: Text(
                  "Album: ${posts?[index].albumId}\nPhoto: ${posts?[index].id}"),
            ),
            Image.network("${posts?[index].url}")
          ],
        );
      },
    );
  }
}

class testPage extends StatefulWidget {
  @override
  _testPage createState() => _testPage();
}

class _testPage extends State<testPage> {
  Future<List<Photo>>? posts;

  @override
  void initState() {
    super.initState();
    posts = getPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Photos"),
        ),
        body: Center(
          child: FutureBuilder<List<Photo>>(
            future: posts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return PhotoList(posts: snapshot.data);
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
