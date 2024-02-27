import 'package:flutter/material.dart';
import 'package:tobeto_pair_one/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://yt3.googleusercontent.com/rujsXM9GBNRNeLAiQUQf0if4k8YQeOLBpHs4_Msm_s4eXe61WPU5tzeURbKbMdjMR3KHTIl9CA=s900-c-k-c0x00ffffff-no-rj",
                width: 300,
                height: 150,
              ),
            ),
            const Text(
              """Anlamadığın yerleri ,eğitmene anlık olarak sorabilirsin.
 Her dersin sonunda verilen ödevlerle birlikte
 konuları pekiştirebileceksin""",
              style: TextStyle(
                  fontSize: 12,
                  decorationColor: Colors.white,
                  color: Colors.purple),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Icon(Icons.next_plan))
          ],
        ),
      ),
    );
  }
}
