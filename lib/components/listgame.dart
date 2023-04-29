import 'dart:convert';

import 'package:flutter/material.dart';

class MyJsonListWidget extends StatelessWidget {
  const MyJsonListWidget();

  final String jsonFilePath = "../packs.json";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(jsonFilePath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<dynamic> data = json.decode(snapshot.data.toString());

          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['title']),
                subtitle: Text(data[index]['subtitle']),
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
