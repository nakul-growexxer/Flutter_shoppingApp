// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class List_View extends StatelessWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(
            title: Text("Anchor"),
            subtitle: Text("Lower the anchor."),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
            trailing: Icon(Icons.star)),
        ListTile(
            title: Text("Alarm"),
            subtitle: Text("This is the time."),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
            trailing: Icon(Icons.star)),
        ListTile(
            title: Text("Ballot"),
            subtitle: Text("Cast your vote."),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")),
            trailing: Icon(Icons.star))
      ],
    );
  }
}
