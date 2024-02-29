import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/widget/my_drawer.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duyurular"),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          ListTile(
            title: Text("Duyuru 1"),
            subtitle: Text("Bu bir duyurudur."),
          ),
          ListTile(
            title: Text("Duyuru 2"),
            subtitle: Text("Bu da bir duyurudur."),
          ),
          // Buraya istediğiniz kadar duyuru ekleyebilirsiniz.
        ],
      ),
    );
  }
}
