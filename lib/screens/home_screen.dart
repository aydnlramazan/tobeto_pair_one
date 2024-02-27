import 'package:flutter/material.dart';

import 'package:tobeto_pair_one/widget/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getUser();
  }

  // Bloc içinde olması lazım!
  void getUser() async {
//buraya kadar repository içine almalısın!
//burası bloc içinde olmalı
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const MyDrawer(),
        body: Center(
          child: Column(
            children: [
              Image.network(
                "https://s3-alpha-sig.figma.com/img/1169/3d72/e7f67c8a7cb1fa1ea55d66ad844e589f?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X~6wiAmnp3RC40ozLfGNXynfXm8aVVmMK9VPRoiPdjRy1NHljQl9EroctKlFuCvbTVQCRmd7CaRTGRm7C8nBR0RSvz7CfE4qMDF1Uhq69SAIY7wwfm0bfsaxoYXJjMbFiE4ygYrVTybR0JJCJ0T194NNyvnW9Irw5qx9m9dYqsQ0v10fGaABVhWwNFBpI1cbUzyIo-AIDsE~gDruR6vhWe2Sq6Md87X2c-2GvNtMukfxxv6qhyl9Qv7zcl2wTu8TPdVYZ4BVuUwpJ0dgrkBwV3cPDxHTPQEvJ6o9jVkrUQPkUv1dTOf04oIyt2vRVoIE6JPY4joi2PcNXhRU6~DniQ__",
                width: 144,
                height: 29.9,
              ),
            ],
          ),
        ));
  }
}
