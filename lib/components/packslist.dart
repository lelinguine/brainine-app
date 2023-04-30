import 'dart:convert';

import 'package:brainine/navigation/myrules.dart';
import 'package:flutter/material.dart';

import 'mybutton.dart';
import 'packsdetails.dart';

class PacksList extends StatelessWidget {
  final String jsonFilePath = 'lib/packs.json';

  const PacksList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(jsonFilePath),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final List<dynamic> data =
            json.decode(snapshot.data.toString())['packs'];

        return ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final pack = data[index];
            return Column(
              children: [
                MyButton(
                  page: const MyRules(),
                  child: PacksDetails(
                    title: pack['title'],
                    score: pack['score'],
                    slot1: pack['slot1'],
                    slot2: pack['slot2'],
                  ),
                ),
                const SizedBox(height: 14),
              ],
            );
          },
        );
      },
    );
  }
}
