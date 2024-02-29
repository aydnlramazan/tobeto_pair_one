import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/widget/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("HOME"),
      ),
    );
  }
}
