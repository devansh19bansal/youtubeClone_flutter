import 'package:flutter/material.dart';
import 'package:youtube/services/services.dart';
import 'package:timeago/timeago.dart' as timeago;

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Services obj = Services();

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    List data;
    return Scaffold(
      body: Container(
        child: FutureBuilder(
            future: obj.getHttp(),
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                data = snapshot.data["items"];
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ...data.map((element) {
                        return Card(
                          child: Column(
                            children: [
                              Image.network(element["snippet"]["thumbnails"]
                                  ["high"]["url"]),
                              Text(element["snippet"]["title"]),
                              Row(
                                children: [
                                  Text(element["snippet"]["channelTitle"]),
                                  Text(timeago
                                      .format(DateTime.parse(
                                          element["snippet"]["publishedAt"]))
                                      .toString())
                                ],
                              )
                            ],
                          ),
                        );
                      })
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
