// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tools/components/post_item.dart';
import 'package:tools/components/tool_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    userFromServer();
    return Scaffold(
        appBar: ToolBar(
          title: 'tools',
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on_outlined),
            )
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 24,
            );
          },
        ));
  }

  userFromServer() {
    for (var i = 0; i < 70; i++) {
      users.add("User number $i");
    }
    return users;
  }
}
