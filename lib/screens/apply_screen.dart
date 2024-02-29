import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/widget/my_drawer.dart';

class ApplyScreen extends StatelessWidget {
  const ApplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Başvurular"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("BAŞVURULAR"),
      ),
    );
  }
}
