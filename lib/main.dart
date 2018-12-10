import 'package:contacts_list_demo_flutter/contacts_list_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ContactsListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
